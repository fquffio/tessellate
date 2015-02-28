<?php

/**
 * Helper to have the benefits of the CakePHP `Set` class also in view.
 */
class FqSetHelper extends Helper
{
    /**
     * Interpreter's hook to alias `Set` class' static functions.
     *
     * @param string $name
     * @param array $arguments
     * @return mixed
     */
    public function __call ($name, $arguments) {
        if (!method_exists('Set', $name)) {
            return null;
        }
        return call_user_func_array("Set::{$name}", $arguments);
    }
}
