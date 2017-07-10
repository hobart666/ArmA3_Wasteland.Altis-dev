class killfeed_board
{
	idd = -1;
	movingEnable = true;
	enableSimulation = true;
	fadeout=0;
	fadein=0;
	duration = 9999999;
	onLoad = "uiNamespace setVariable ['killfeed_board',_this select 0]";
	class controls {
		class RscStructuredText_1100: RscStructuredText
		{
			idc = 0;
			x = 0.008 * safezoneW + safezoneX;
			y = 0.01 * safezoneH + safezoneY;
			w = 0.283594 * safezoneW;
			h = 0.231 * safezoneH;
		};
	};
};

class killfeed_picture
{
	idd = -1;
	movingEnable = true;
	enableSimulation = true;
	fadeout=0;
	fadein=0;
	duration = 9999999;
	onLoad = "uiNamespace setVariable ['killfeed_picture',_this select 0]";
	class controls {
		class RscPicture_1101: RscPicture
        {
          idc = 1;
          x = 0.032 * safezoneW + safezoneX;
          y = 0.004 * safezoneH + safezoneY;
          w = 0.153594 * safezoneW;
          h = 0.141 * safezoneH;
        };
	};
};