const TextToSVG = require('text-to-svg');
const textToSVG = TextToSVG.loadSync('/usr/share/fonts/adobe-source-han-sans-tw/SourceHanSansTW-Medium.otf');
const svg = textToSVG.getSVG(process.argv[2], options = {
    anchor: 'left top',
    attributes: {
        fill: 'red',
        stroke: 'red'
    }
});
console.log(svg);
