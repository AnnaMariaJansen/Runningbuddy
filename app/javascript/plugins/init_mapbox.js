import mapboxgl from 'mapbox-gl';


const fitMapToMarkers = (map, markers) => {
  const bounds = new mapboxgl.LngLatBounds();
  markers.forEach(marker => bounds.extend([ marker.lng, marker.lat ]));
  map.fitBounds(bounds, { padding: 70, maxZoom: 15 });
};

const initMapbox = () => {
  const mapElement = document.querySelectorAll('.maps');
  mapElement.forEach((mapContainer) => {
    if (mapContainer) { // only build a map if there's a div#map to inject into
      mapboxgl.accessToken = mapContainer.dataset.mapboxApiKey;
      const map = new mapboxgl.Map({
        container: `map-${mapContainer.dataset.runId}`,
        style: 'mapbox://styles/mapbox/light-v10'
      });

      const markers = JSON.parse(mapContainer.dataset.markers);
      markers.forEach((marker) => {
        const popup = new mapboxgl.Popup().setHTML(marker.infoWindow);
        const element = document.createElement('div');
        element.className = 'marker';
        element.style.backgroundImage = `url('https://www.atozpartyrental.net/dev/wp-content/uploads/2018/06/SPANDEX_swatch_neongreen-458x500.jpg')`;
        element.style.backgroundSize = 'contain';
        element.style.borderRadius = '50px';
        element.style.width = '15px';
        element.style.height = '15px';
        new mapboxgl.Marker(element)
        .setLngLat([ marker.lng, marker.lat ])
        .setPopup(popup)
        .addTo(map);
      });
      fitMapToMarkers(map, markers);
    };
  });
};

export { initMapbox };
