<?php

class PluginNews_WidgetNews extends Widget {
    public function Exec() {
        $aResult = $this->Wall_GetWall(
			array('pid' => 0), 
			array(), 1,
			7 // количество записей
            );
        $aWall = $aResult['collection'];
        $this->Viewer_Assign('aWall', $aWall);
    }
}

