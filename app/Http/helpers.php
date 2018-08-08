<?php

function isMobileApi()
{
	if (in_array('mobile', explode('/', strtolower($_SERVER['REQUEST_URI']))))
		return true;
	return false;
}