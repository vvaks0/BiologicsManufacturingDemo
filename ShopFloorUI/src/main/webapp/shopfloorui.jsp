<html>
<head>
<title>Shop Floor Map</title>
<!-- <link rel="stylesheet" type="text/css" href="css/mapStyle.css"> -->
<style type="text/css">
.header{
	padding-top: 10px;
    padding-bottom: 10px;
    vertical-align: bottom;
    position: relative;
    height: 70px;
    background-color: #333;
    border-bottom: 5px solid #3FAB2A;
}

#brandingLayout {
    position: relative;
    height: 70px;
    padding: 0px 48px 0px 10px;
}

.brandTitle {
    color: #ffffff;
    font-weight: bolder;
    font-size: 1.25em;
    vertical-align: bottom;
    margin-left: 2px;
    margin-right: 0px;
}

body {
    margin: 0;
    padding: 0;
}

div#bodyContainer{
	margin-top: 15px;
	height: 100%;
}

.leftPane {
    float: left;
    height: 75%;
    width: 50%;
    background-color: #ffffff;
    /* box-shadow: 5px 5px 5px rgba(0, 0, 0, 0.1); */
}

.rightPane {
    float: left;
    height: 80%;
    width: 50%;
    background-color: #ffffff;
    /* box-shadow: 5px 5px 5px rgba(0, 0, 0, 0.1); */
}

.rightSidePaneDivider{
    float: left;
    position: relative;
    height: 27%;
    width: 100%;
    margin-top: 20px;
    background-color: #ffffff;
    /*box-shadow: 5px 5px 5px rgba(0, 0, 0, 0.1)*/
}

.leftSidePaneDivider {
    float: left;
    position: relative;
    height: 40%;
    width: 100%;
    background-color: #ffffff;
    /* box-shadow: 5px 5px 5px rgba(0, 0, 0, 0.1); */
    margin-top: 15;
}

.processDivider {
    float: left;
    position: relative;
    height: 50%;
    width: 95%;
    margin: 10px;
    border-top: 1px solid #D4D4D4;
    border-left: 1px solid #D4D4D4;
    border-bottom: 1px solid #D4D4D4;
    border-right: 1px solid #D4D4D4;
}

.processImageDiv {
    padding: 10px;
    width: 20%;
    height: 70%;
    margin: 5px;
    background: #ffffff;
    border-top: 1px solid #D4D4D4;
    border-left: 1px solid #D4D4D4;
    border-bottom: 1px solid #D4D4D4;
    border-right: 1px solid #D4D4D4;
    float: left;
    position: relative;
}

.processTextDiv {
    padding: 10px;
    width: 64%;
    height: 70%;
    margin: 5px;
    background: #ffffff;
    border-top: 1px solid #D4D4D4;
    border-left: 1px solid #D4D4D4;
    border-bottom: 1px solid #D4D4D4;
    border-right: 1px solid #D4D4D4;
    float: left;
    position: relative;
    font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
    font-size: 14px;
    /* box-shadow: 5px 5px 5px rgba(0, 0, 0, 0.1); */
}

.processTextSubDiv {
    width: 96%;
    height: 45%;
    margin-top: 2px;
    background: #ffffff;
    border-top: 1px solid #D4D4D4;
    border-left: 1px solid #D4D4D4;
    border-bottom: 1px solid #D4D4D4;
    border-right: 1px solid #D4D4D4;
    float: left;
    position: relative;
    font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
    font-size: 14px;
    /* box-shadow: 5px 5px 5px rgba(0, 0, 0, 0.1); */
}

.gaugeDiv{
	padding: 10px; 
    width: 110px;
    height: 150px;
    margin-left: 15px;
    background: #ffffff;
    border-top: 1px solid #D4D4D4;
    border-left: 1px solid #D4D4D4;
    border-bottom: 1px solid #D4D4D4;
    border-right: 1px solid #D4D4D4;
    float: left;
    position: relative;
}

.chartDiv{
 	padding: 10px; 
    width: 380px;
    height: 150px;
    margin-left: 15px;
    background: #ffffff;
    border-top: 1px solid #D4D4D4;
    border-left: 1px solid #D4D4D4;
    border-bottom: 1px solid #D4D4D4;
    border-right: 1px solid #D4D4D4;
    float: left;
    position: relative;
    /*box-shadow: 5px 5px 5px rgba(0, 0, 0, 0.1);*/
    /*font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
    /*font-size: 14px */
}

/*
.techDiv{
    padding: 20px; 
    margin: 15px;
    width: 100%;
    height: 100px;
    margin-top: 15px;
    background: #ffffff;
    border-top: 1px solid #D4D4D4;
    border-left: 1px solid #D4D4D4;
    border-bottom: 1px solid #D4D4D4;
    border-right: 1px solid #D4D4D4;
    font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
    font-size: 14px
}

.deviceContainer{
	margin-top: 5px;
    float: left;
    margin: 10px;
    width: 29%;
    height: 175px;
}

.deviceAlertDiv{
	margin-top: 5px;
    border: 5px solid #f5f5f5;
    background: #ffffff;
    padding: 5px;
    float: left;
    margin: 5px;
    width: 100%;
    height: 30%;
    border-top: 1px solid #D4D4D4;
    border-left: 1px solid #D4D4D4;
    border-bottom: 1px solid #D4D4D4;
    border-right: 1px solid #D4D4D4;
    font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
    font-size: 14px
}
.deviceDiv{
	margin-top: 5px;
    border: 5px solid #f5f5f5;
    background: #ffffff;
    padding: 5px;
    float: left;
    margin: 5px;
    width: 100%;
    height: 50%;
    border-top: 1px solid #D4D4D4;
    border-left: 1px solid #D4D4D4;
    border-bottom: 1px solid #D4D4D4;
    border-right: 1px solid #D4D4D4;
    font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
    font-size: 14px
}

div#mapcontainer{
	padding-top: 10px;
    padding-bottom: 10px;
    height: 400px;
    width: 100%;
    float: left;
}
div#lowerContainer{
	margin-top: 10px;
	height: 100%;
	width: 100%;
    margin: 0;
    padding: 0;
	overflow: none;
}

div#deviceContainer{
    padding-bottom: 10px;
    height: 200px;
    width: 100%;
    float: left;
    border-bottom: 1px solid #ffffff;
    border-right: 1px solid #ffffff;
}
*/
</style>
<script type="text/javascript" src="http://maps.googleapis.com/maps/api/js"></script>
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script src="//ajax.googleapis.com/ajax/libs/dojo/1.7.8/dojo/dojo.js"></script>
<script type="text/javascript">
  dojo.require("dojo.io.script");
  dojo.require("dojox.cometd");
  dojo.require("dojox.cometd.longPollTransport");
  
  var pubSubUrl = "http://sandbox.hortonworks.com:8091/cometd"; 
  var bioReactorChannel = "/bioReactorStatus";
  var filtrationChannel = "/filtrationStatus";
  var alertChannel = "/alert";
  var predictionChannel = "/prediction";
  var contentString;
  var greenIcon = "images/stb_normal_25.png";
  var yellowIcon = "images/stb_warning_25.png";
  var redIcon = "images/stb_alert_25.png";
  var carIcon = {url:"images/car.png",size: new google.maps.Size(30, 30),origin: new google.maps.Point(0, 0),anchor: new google.maps.Point(15, 15)};
  var bioReactorIcon = "images/ge_wave_200.png";
  var chromatographyIcon = "images/ge_akta_ready.png";
  var map;
  var marker;
  var alert = {};
  var markers = {};
  var currentTemp;
  var currentPH;
  var currentOxygen;
  var currentTimeHours;
  var phGauge;
  var phGaugeData;
  var phGaugeOptions;
  var tempGauge;
  var tempGaugeData;
  var tempGaugeOptions;
  var oxygenGauge;
  var oxygenGaugeData;
  var oxygenGaugeOptions;
  var phChart;
  var phChartData;
  var phChartOptions;
  var tempChart;
  var tempChartData;
  var tempChartOptions;
  var oxygenChart;
  var oxygenChartData;
  var oxygenChartOptions;
  var pressureGauge;
  var pressureGaugeData;
  var pressureGaugeOptions;
  var flowRateGauge;
  var flowRateGaugeData;
  var flowRateGaugeOptions;
  var flowTempGauge;
  var flowTempGaugeData;
  var flowTempGaugeOptions;
  var pressureChart;
  var pressureChartData;
  var pressureChartOptions;
  var flowRateChart;
  var flowRateChartData;
  var flowRateChartOptions;
  var flowTempChart;
  var flowTempChartData;
  var flowTempChartOptions;
  var currentSelectedDiv;
  var filtrationTime = 0;
  
  dojo.ready(connectDeviceTopic)
  function connectDeviceTopic(){
		dojox.cometd.init(pubSubUrl);
		dojox.cometd.subscribe("/*", function(message){
			if(message.channel == bioReactorChannel){
				console.log(message);
				
				currentTemp = message.data.internalTemp;
				currentPH = message.data.phLevel;
				currentOxygen = message.data.disolvedOxygen * 100;
				currentTimeHours = message.data.hoursFromStart;
				if(currentTimeHours == 0){
					document.getElementById("prodAlert").innerHTML = '';
				}
				currentBatch = message.data.batchNumber;
				console.log(currentTemp + " " + currentPH + "" + currentOxygen);
				
				phGaugeData.setValue(0, 1, currentPH);
				phGauge.draw(phGaugeData, phGaugeOptions);
				oxygenGaugeData.setValue(0, 1, currentOxygen);
				oxygenGauge.draw(oxygenGaugeData, oxygenGaugeOptions);
				tempGaugeData.setValue(0, 1, currentTemp);
				tempGauge.draw(tempGaugeData, tempGaugeOptions);
				phChartData.addRows([[currentBatch + "-" + currentTimeHours, currentPH]]);
				phChart.draw(phChartData, phChartOptions);
				tempChartData.addRows([[currentBatch + "-" + currentTimeHours, currentTemp]]);
				tempChart.draw(tempChartData, tempChartOptions);
				oxygenChartData.addRows([[currentBatch + "-" + currentTimeHours, currentOxygen]]);
				oxygenChart.draw(oxygenChartData, oxygenChartOptions);
			}else if(message.channel == filtrationChannel){
				console.log(message);
				filtrationTime++;
				currentPressure = message.data.internalPressure;
				currentFlowRate = message.data.flowRate;
				currentFlowTemp = message.data.flowTemp;
				currentTimeHours = message.data.hoursFromStart;
				currentBatch = message.data.batchNumber;
				
				pressureGaugeData.setValue(0, 1, currentPressure);
				pressureGauge.draw(pressureGaugeData, pressureGaugeOptions);
				flowRateGaugeData.setValue(0, 1, currentFlowRate);
				flowRateGauge.draw(flowRateGaugeData, flowRateGaugeOptions);
				flowTempGaugeData.setValue(0, 1, currentFlowTemp]);
				flowTempGauge.draw(flowTempGaugeData, flowTempGaugeOptions);
				pressureChartData.addRows([["-" + filtrationTime, currentPressure]]);
				pressureChart.draw(pressureChartData, pressureChartOptions);
				flowRateChartData.addRows([["-" + filtrationTime, currentFlowRate]]);
				flowRateChart.draw(flowRateChartData, flowRateChartOptions);
				flowTempChartData.addRows([["-" + filtrationTime, currentFlowTemp]]);
				flowTempChart.draw(flowTempChartData, flowTempChartOptions);
			}else if(message.channel == alertChannel){
				console.log(message);
				var alertType = message.data.alertType;
				var alertDesc = document.getElementById("prodAlert").innerHTML
				if(alertType == "PH"){
					document.getElementById("prodAlert").innerHTML = '<br><font color="red">ALERT: ' + message.data.alertDesc; +'</font>';
				}else if(alertType == "O2"){
					document.getElementById("prodAlert").innerHTML = '<br><font color="red">ALERT: ' + message.data.alertDesc; +'</font>';
				}
				}else if(alertType == "Pressure"){
					document.getElementById("filtrationAlert").innerHTML = '<br><font color="red">ALERT: ' + message.data.alertDesc; +'</font>';
				}
				}else if(alertType == "FlowRate"){
					document.getElementById("filtrationAlert").innerHTML = '<br><font color="red">ALERT: ' + message.data.alertDesc; +'</font>';
				}
			}else{
				console.log(message)
			}	
		});
  }
  
  google.charts.load('current', {packages:['gauge', 'line']});
  google.charts.setOnLoadCallback(drawPhGauge);
  google.charts.setOnLoadCallback(drawOxygenGauge);
  google.charts.setOnLoadCallback(drawTempGauge);
  google.charts.setOnLoadCallback(drawPhChart);
  google.charts.setOnLoadCallback(drawOxygenChart);
  google.charts.setOnLoadCallback(drawTempChart);
  google.charts.setOnLoadCallback(drawPressureGauge);
  google.charts.setOnLoadCallback(drawFlowRateGauge);
  google.charts.setOnLoadCallback(drawFlowTempGauge);
  google.charts.setOnLoadCallback(drawPressureChart);
  google.charts.setOnLoadCallback(drawFlowRateChart);
  google.charts.setOnLoadCallback(drawFlowTempChart);
  
  function drawPhGauge() {
	  phGaugeData = google.visualization.arrayToDataTable([
      ['Label', 'Value'],
      ['PH', 0]
    ]);

    phGaugeOptions = {
      width: 400, height: 120,
      redFrom: 0, redTo: 4.5,
      yellowFrom:4.5, yellowTo: 6,
      min: 0, max: 10,
      minorTicks: 1
    };

    phGauge = new google.visualization.Gauge(document.getElementById('bioReactorPhGaugeDiv'));
    phGauge.draw(phGaugeData, phGaugeOptions);
  }
  
  function drawTempGauge() {
	  	tempGaugeData = google.visualization.arrayToDataTable([
	      ['Label', 'Value'],
	      ['Temp', 0]
	    ]);

	    tempGaugeOptions = {
	      width: 400, height: 120,
	      redFrom: 0, redTo: 5,
	      yellowFrom:5, yellowTo: 15,
	      min: 0, max: 50,
	      minorTicks: 5
	    };

	    tempGauge = new google.visualization.Gauge(document.getElementById('bioReactorTempGaugeDiv'));
	    tempGauge.draw(tempGaugeData, tempGaugeOptions);
  }
  function drawOxygenGauge() {
	    oxygenGaugeData = google.visualization.arrayToDataTable([
	      ['Label', 'Value'],
	      ['Oxygen', 0]
	    ]);

	    oxygenGaugeOptions = {
	      width: 400, height: 120,
	      redFrom: 0, redTo: 10,
	      yellowFrom:10, yellowTo: 15,
	      minorTicks: 5
	    };

	    oxygenGauge = new google.visualization.Gauge(document.getElementById('bioReactorOxygenGaugeDiv'));
	    oxygenGauge.draw(oxygenGaugeData, oxygenGaugeOptions);
   }
  
  function drawTempChart() {
      tempChartData = new google.visualization.DataTable();
      tempChartData.addColumn('string', 'Day');
      tempChartData.addColumn('number', 'Temp');

      tempChartData.addRows([['0-0',  37]]);
      tempChartOptions = {
        chart: {},
        width: 350,
        height: 150,
        axes: {
            x: {
              0: {side: 'bottom'}
            },
        	y: {
        	  0: {side: 'left'}	
        	}
        }
      };

      tempChart = new google.charts.Line(document.getElementById('bioReactorTempChartDiv'));
      tempChart.draw(tempChartData, tempChartOptions);
  }
  function drawPhChart() {
      phChartData = new google.visualization.DataTable();
      phChartData.addColumn('string', 'Day');
      phChartData.addColumn('number', 'PH');

      phChartData.addRows([['0-0', 7]]);
      phChartOptions = {
    	        chart: {},
    	        width: 350,
    	        height: 150,
    	        axes: {
    	            x: {
    	            	0: {side: 'bottom'}
    	            },
    	        	y: {
    	          	  0: {side: 'left'}	
    	          	}
    	        }
   	  };

      phChart = new google.charts.Line(document.getElementById('bioReactorPhChartDiv'));
      phChart.draw(phChartData, phChartOptions);
  }
  function drawOxygenChart() {
      oxygenChartData = new google.visualization.DataTable();
      oxygenChartData.addColumn('string', 'Day');
      oxygenChartData.addColumn('number', 'Oxygen');

      oxygenChartData.addRows([['0-0', 20]]);
      oxygenChartOptions = {
    	        chart: {},
    	        width: 350,
    	        height: 150,
    	        axes: {
    	            x: {
    	            	0: {side: 'bottom'}
    	            },
    	        	y: {
    	          	  0: {side: 'left'}	
    	          	}
    	        }
      };

      oxygenChart = new google.charts.Line(document.getElementById('bioReactorOxygenChartDiv'));
      oxygenChart.draw(oxygenChartData, oxygenChartOptions);
  }
  
  function drawPressureGauge() {
	  pressureGaugeData = google.visualization.arrayToDataTable([
      ['Label', 'Value'],
      ['Pressure', 30]
    ]);

	pressureGaugeOptions = {
      width: 400, height: 120,
      redFrom: 65, redTo: 100,
      yellowFrom:55, yellowTo: 65,
      min: 0, max: 100,
      minorTicks: 1
    };

    pressureGauge = new google.visualization.Gauge(document.getElementById('filtrationPressureGaugeDiv'));
    pressureGauge.draw(pressureGaugeData, pressureGaugeOptions);
  }
  
  function drawFlowRateGauge() {
	  	flowRateGaugeData = google.visualization.arrayToDataTable([
	      ['Label', 'Value'],
	      ['Flow Rate', 30]
	    ]);

	    flowRateGaugeOptions = {
	      width: 400, height: 120,
	      redFrom: 70, redTo: 100,
	      yellowFrom:60, yellowTo: 70,
	      min: 0, max: 100,
	      minorTicks: 5
	    };

	    flowRateGauge = new google.visualization.Gauge(document.getElementById('filtrationFlowRateGaugeDiv'));
	    flowRateGauge.draw(flowRateGaugeData, flowRateGaugeOptions);
  }
  function drawFlowTempGauge() {
	    flowTempGaugeData = google.visualization.arrayToDataTable([
	      ['Label', 'Value'],
	      ['Flow Temp', 30]
	    ]);

	    flowTempGaugeOptions = {
	      width: 400, height: 120,
	      redFrom: 60, redTo: 100,
	      yellowFrom: 55, yellowTo: 60,
	      min: 0, max: 100,
	      minorTicks: 5
	    };

	    flowTempGauge = new google.visualization.Gauge(document.getElementById('filtrationFlowTempGaugeDiv'));
	    flowTempGauge.draw(flowTempGaugeData, flowTempGaugeOptions);
   }
  
  function drawPressureChart() {
      pressureChartData = new google.visualization.DataTable();
      pressureChartData.addColumn('string', 'Day');
      pressureChartData.addColumn('number', 'Pressure');

      pressureChartData.addRows([['-0',  40]]);
      pressureChartOptions = {
        chart: {},
        width: 350,
        height: 150,
        axes: {
            x: {
              0: {side: 'bottom'}
            },
        	y: {
        	  0: {side: 'left'}	
        	}
        }
      };

      pressureChart = new google.charts.Line(document.getElementById('filtrationPressureChartDiv'));
      pressureChart.draw(pressureChartData, pressureChartOptions);
  }
  function drawFlowRateChart() {
      flowRateChartData = new google.visualization.DataTable();
      flowRateChartData.addColumn('string', 'Day');
      flowRateChartData.addColumn('number', 'Flow Rate');

      flowRateChartData.addRows([['-0', 40]]);
      flowRateChartOptions = {
    	        chart: {},
    	        width: 350,
    	        height: 150,
    	        axes: {
    	            x: {
    	            	0: {side: 'bottom'}
    	            },
    	        	y: {
    	          	  0: {side: 'left'}	
    	          	}
    	        }
   	  };

      flowRateChart = new google.charts.Line(document.getElementById('filtrationFlowRateChartDiv'));
      flowRateChart.draw(flowRateChartData, phChartOptions);
  }
  function drawFlowTempChart() {
      flowTempChartData = new google.visualization.DataTable();
      flowTempChartData.addColumn('string', 'Day');
      flowTempChartData.addColumn('number', 'Flow Temp');

      flowTempChartData.addRows([['-0', 35]]);
      flowTempChartOptions = {
    	        chart: {},
    	        width: 350,
    	        height: 150,
    	        axes: {
    	            x: {
    	            	0: {side: 'bottom'}
    	            },
    	        	y: {
    	          	  0: {side: 'left'}	
    	          	}
    	        }
      };

      flowTempChart = new google.charts.Line(document.getElementById('filtrationFlowTempChartDiv'));
      flowTempChart.draw(flowTempChartData, flowTempChartOptions);
  }
  
  function initMap() {
	  var map = new google.maps.Map(document.getElementById('mapcontainer'), {
	    center: {lat: 1, lng: 1},
	    zoom: 1,
	    streetViewControl: false,
	    mapTypeControlOptions: {
	      mapTypeIds: ['Lab']
	    }
	  });

	  var moonMapType = new google.maps.ImageMapType({
	    getTileUrl: function(coord, zoom) {
	        var normalizedCoord = getNormalizedCoord(coord, zoom);
	        if (!normalizedCoord) {
	          return null;
	        }
	        var bound = Math.pow(2, zoom);
	        return 'images/lab' + zoom + '-' + normalizedCoord.x + '-' + (bound - normalizedCoord.y - 1 + '.png');
	    },
	    tileSize: new google.maps.Size(256, 256),
	    maxZoom: 1,
	    minZoom: 0,
	    radius: 1738000,
	    name: 'Lab'
	  });

	  map.mapTypes.set('Lab', moonMapType);
	  map.setMapTypeId('Lab');
	  
	  var marker = new google.maps.Marker({
          position: new google.maps.LatLng(3,3),
          map: map,
          icon: bioReactorIcon,
          title: "GE Wave 200",
          optimized: false
 	  });
	}

	// Normalizes the coords that tiles repeat across the x axis (horizontally)
	// like the standard Google map tiles.
	function getNormalizedCoord(coord, zoom) {
	  var y = coord.y;
	  var x = coord.x;

	  // tile range in one direction range is dependent on zoom level
	  // 0 = 1 tile, 1 = 2 tiles, 2 = 4 tiles, 3 = 8 tiles, etc
	  var tileRange = 2 << zoom;

	  // don't repeat across y-axis (vertically)
	  if (y < 0 || y >= tileRange) {
	    return null;
	  }
	  if (x < 0 || x >= tileRange) {
		    return null;
	  }

	  /* repeat across x-axis
	  if (x < 0 || x >= tileRange) {
	    x = (x % tileRange + tileRange) % tileRange;
	  }*/

	  return {x: x, y: y};
	}
  
  function loadMap() {
    var myOptions = {
      zoom: 13,
      center: new google.maps.LatLng(lat, lng),
      mapTypeId: google.maps.MapTypeId.ROADMAP
    };
    map = new google.maps.Map(document.getElementById("mapcontainer"),myOptions);
  }
  
  function showFermentation(id){
	  if(currentSelectedDiv != null){
		  	document.getElementById(currentSelectedDiv).style.backgroundColor = "#FFFFFF";
	  }
	  document.getElementById(id).style.backgroundColor = "#D6E9F8";
	  document.getElementById("filtrationSidePane").style.display = "none";
	  document.getElementById("fermentationSidePane").style.display = "block";
	  currentSelectedDiv = id;
  }
  
  function showFiltration(id){
	  if(currentSelectedDiv != null){
	  	document.getElementById(currentSelectedDiv).style.backgroundColor = "#FFFFFF";
	  }
	  document.getElementById(id).style.backgroundColor = "#D6E9F8";
	  document.getElementById("fermentationSidePane").style.display = "none";
	  document.getElementById("filtrationSidePane").style.display = "block";
	  currentSelectedDiv = id;
  }
  
</script>
</head>
 
<body onload="">
<div class="header">
		<div id="brandingLayout">
                <a class="brandingContent" href="CustomerOverview?requestType=customerOverview">
                    <img src="images/hortonworks-logo-new.png" width="200px"/>
                    <span class="brandTitle" data-i18n="BRAND_TITLE"></span>
                </a>
		</div>
</div>

<div id="bodyContainer">
	<div class="leftPane">
	<div id ="upStreamDiv" class="processDivider">
		<!-- <div id="mapcontainer"></div>  -->
		<div id="seedCultureDiv" class="leftSidePaneDivider" onclick="showFermentation(this.id)">
			<div id="seedText" class="processTextDiv">Seed Culture</div>
			<div id="seedImage" class="processImageDiv"><image src="images/ge_wave_10.png"></image></div>
		</div>
		<div id="prodCultureDiv" class="leftSidePaneDivider" onclick="showFermentation(this.id)">
			<div id="prodTextContainer" class="processTextDiv">
				<div id="prodText" class="processTextSubDiv">Production Culture</div>
				<div id="prodAlert" class="processTextSubDiv"></div>
			</div>
			<div id="prodImage" class="processImageDiv"><image src="images/ge_wave_200.png"></image></div>
		</div>
	</div>
	<div id ="downStreamDiv" class="processDivider">
		<div id="clarificationDiv" class="leftSidePaneDivider" onclick="showFiltration(this.id)">
			<div id="clarificationText" class="processTextDiv">Clarification</div>
			<div id="clarificationImage" class="processImageDiv"><image src="images/ge_akta_ready.png"></div>
		</div>
		<div id="filtrationDiv" class="leftSidePaneDivider" onclick="showFiltration(this.id)">
			<div id="filtrationTextContainer" class="processTextDiv">
				<div id="filtrationText" class="processTextSubDiv">Sterile Filtration</div>
				<div id="filtrationAlert" class="processTextSubDiv"></div>
			</div>
			<div id="filtrationImage" class="processImageDiv"><image src="images/ge_akta_crossflow.png"></div>
		</div>
	</div>	
	</div>
	<div id="fermentationSidePane" class="rightPane">
		<div class="rightSidePaneDivider">
			<div id="bioReactorPhGaugeDiv" class="gaugeDiv"></div>
			<div id="bioReactorPhChartDiv" class="chartDiv"></div>
		</div>
		<div class="rightSidePaneDivider">
			<div id="bioReactorOxygenGaugeDiv" class="gaugeDiv"></div>
			<div id="bioReactorOxygenChartDiv" class="chartDiv"></div>
		</div>
		<div class="rightSidePaneDivider">
			<div id="bioReactorTempGaugeDiv" class="gaugeDiv"></div>	
			<div id="bioReactorTempChartDiv" class="chartDiv"></div>
		</div>
	</div>
	<div id="filtrationSidePane" class="rightPane" style="display:none;">
		<div class="rightSidePaneDivider">
			<div id="filtrationPressureGaugeDiv" class="gaugeDiv"></div>
			<div id="filtrationPressureChartDiv" class="chartDiv"></div>
		</div>
		<div class="rightSidePaneDivider">
			<div id="filtrationFlowRateGaugeDiv" class="gaugeDiv"></div>
			<div id="filtrationFlowRateChartDiv" class="chartDiv"></div>
		</div>
		<div class="rightSidePaneDivider">
			<div id="filtrationFlowTempGaugeDiv" class="gaugeDiv"></div>	
			<div id="filtrationFlowTempChartDiv" class="chartDiv"></div>
		</div>
	</div>
</div>  
			
</body>
 
</html>