<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;

class MImplement extends Model
{
    protected $table = "m_implement";

    /**
     * Get all of the implements for the MImplement
     *
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function implements(): HasMany
    {
        return $this->hasMany(Implement::class, 'implement_id');
    }

        /**
     * Get all of the job for the Implement
     *
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function job(): HasMany
    {
        return $this->hasMany(Job::class, 'implement_id');
    }
}
