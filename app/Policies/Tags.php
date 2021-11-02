<?php

namespace App\Policies;

use App\User;
use Illuminate\Auth\Access\HandlesAuthorization;

class Tags
{
    use HandlesAuthorization;

    public function create(User $user)
    {
        return $this->getPermission($user,44);
    }

    public function update(User $user)
    {
        return $this->getPermission($user,45);
    }

    public function delete(User $user)
    {
        return $this->getPermission($user,46);
    }

    //custom function
    protected function getPermission($user,$p_id)
    {
        //
        foreach ($user->roles as $role)
        {
            foreach ($role->permissions as $permission)
            {
                if($permission->id == $p_id)
                {
                    return true;
                }

            }
        }

        return false;
    }
}
