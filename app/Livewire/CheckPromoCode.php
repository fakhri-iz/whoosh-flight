<?php

namespace App\Livewire;

use Livewire\Component;

class CheckPromoCode extends Component
{
    public $promo_code;
    public $discount = 0;
    public $discount_type;
    public $isValid = false;

    public function checkPromoCode()
    {
        $promo = $this->findPromoCode($this->promo_code);

        if ($promo) {
            $this->applyPromoCode($promo);
        } else {
            $this->invalidatePromo;
        }

        $this->dispatchPromoCodeUpdate();
    }

    public function render()
    {
        return view('livewire.check-promo-code');
    }
}
