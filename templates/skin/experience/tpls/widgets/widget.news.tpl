<!-- Блок сайдбара -->
<div class="panel panel-default sidebar raised widget widget-type-stream">
    <div class="panel-body">
        <h4 class="panel-header">
			<i class="fa fa-edit"></i>
			{$aLang.user_menu_profile_wall}
		</h4>
		
	{foreach $aWall as $oWall}
	{$oWallUser=$oWall->getUser()}
	{$aReplyWall=$oWall->getLastReplyWall()}
        <div id="wall-item-{$oWall->getId()}" style="margin-bottom: 17px;">
          <img src="{$oWallUser->getAvatarUrl(30)}" alt="{$oWallUser->getDisplayName()}" 
		  style="float: left;margin: 3px 10px 0px 0px;border-radius: 50%;"/>
			<div class="comment" style="
								border: 1px solid;
								margin-left: 42px;
								border-color: #E8E8E8;
								border-radius: 4px;
								padding: 2px 10px 5px;">
								
			<span style="float: left;">
               <i style="margin: -2px 0px 0px -15px;position: absolute;padding: 0px;font-size: 24px;color: #FFFFFF; z-index: 1;" class="fa fa-caret-left"></i>
               <i style="margin: -3px 0px 0px -18px;position: absolute;padding: 0px;font-size: 24px;color: #F0F0F0;" class="fa fa-angle-left"></i>
            </span>
				
            <a style="font-size: 11px;color: #B5B5B5;" href="{$oWallUser->getProfileUrl()}" class="link link-dual link-lead wall-username">{if $oWallUser->getProfileName()}{$oWallUser->getProfileName()}{else}{$oWallUser->getDisplayName()}{/if}</a><span style="font-size: 11px;color: #B5B5B5;">{if $oWallUser->getProfileSex() != 'woman'} написал:{else} написала:{/if}</span>	
			
                <div class="comment-content text" style="font-size: 11px;">
                    {$oWall->getText()|strip_tags|trim|truncate:70:'...'|escape:'html'}
                </div>
			
			<time datetime="{date_format date=$oWall->getDateAdd() format='c'}" class="comment-date" style="font-size: 11px;color: #B5B5B5;">
                {date_format date=$oWall->getDateAdd() hours_back="12" minutes_back="60" now="60" day="day H:i" format="j F Y"}
            </time>
			 
			<span style="font-size: 11px;color: #B5B5B5;">|</span>
			 
			 <a style="font-size: 11px;color: #B5B5B5; class="link link-lead link-clear" href="{$oWall->getUrlWall()}#wall-item-{$oWall->getId()}">{$aLang.wall_action_reply}</a>
            </div>
        </div>
    {/foreach}
 </div>
 </div>
