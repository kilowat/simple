<?php
if(!defined("B_PROLOG_INCLUDED") || B_PROLOG_INCLUDED!==true)die();
global $APPLICATION;
$strTitle = $APPLICATION->GetTitle();
//delayed function must return a string
if(empty($arResult))
	return "";

$strReturn = '<ul class="breadcrumb-navigation">';

for($index = 0, $itemSize = count($arResult); $index < $itemSize; $index++)
{
	if($index > 0)
		$strReturn .= '<li><span>&nbsp;&nbsp;</span></li>';

	$title = htmlspecialcharsex($arResult[$index]["TITLE"]);
         var_dump($arResult[$index]["TITLE"]);
	if($arResult[$index]["LINK"] <> "")
		$strReturn .= '<li><a href="'.$arResult[$index]["LINK"].'" title="'.$title.'">'.$title.'</a></li>';
	else
		$strReturn .= '<li>'.$title.'</li>';
}
$strReturn .= '<li>&nbsp;'.$strTitle.'</li>';
$strReturn .= '</ul>';
return $strReturn;

?>
