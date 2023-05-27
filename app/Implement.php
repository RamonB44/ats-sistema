<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\HasMany;

class Implement extends Model
{
    /**
     * Get the user that owns the Implement
     *
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function mimplemento(): BelongsTo
    {
        return $this->belongsTo(MImplement::class, 'm_implement_id');
    }
}
