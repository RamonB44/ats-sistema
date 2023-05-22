<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;

class Implement extends Model
{
    /**
     * Get all of the comments for the Implement
     *
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function job(): HasMany
    {
        return $this->hasMany(Job::class);
    }
}
