<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class Job extends Model
{
    protected $table = "job";

    /**
     * Get the user that owns the Job
     *
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function m_implemento(): BelongsTo
    {
        return $this->belongsTo(MImplement::class, 'implement_id');
    }
}
