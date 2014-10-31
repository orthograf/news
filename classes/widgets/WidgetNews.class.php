<?php

class PluginNews_WidgetNews extends Widget {

    public function Exec() {
        /** Получаем записи стены */
        $aWall = $this->Wall_GetWall(
			array('pid' => null), 
			array(), 1,
			7 // количество новостей
			);

        $this->Viewer_Assign('aWall', $aWall['collection']);
    }
}

