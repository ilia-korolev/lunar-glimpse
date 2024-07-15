{{flutter_js}}
{{flutter_build_config}}

_flutter.loader.load({
    onEntrypointLoaded: async function (engineInitializer) {
        const appRunner = await engineInitializer.initializeEngine();

        zoomSplash();

        await appRunner.runApp();

        setTimeout(function () {
            removeSplash();
        }, 200);
    }
});


function zoomSplash() {
    document.getElementById('splash').classList.add('init_done');
}

function removeSplash() {
    document.getElementById('splash').remove();
    document.body.style.background = "transparent";
}