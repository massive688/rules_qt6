"""qt library defines"""

QT_LIBRARIES = [
    ## base and widgets
    ("core", "QtCore", "Qt6Core", []),
    ("dbus", "QtDBus", "Qt6DBus", []),
    ("gui", "QtGui", "Qt6Gui", [":qt_core", ":qt_dbus"]),
    ("bluetooth", "QtBluetooth", "Qt6Bluetooth", [":qt_core"]),
    ("bodymovin", "QtBodymovin", "Qt6Bodymovin", [":qt_gui", ":qt_core"]),
    ("charts", "QtCharts", "Qt6Charts", [":qt_opengl_widgets", ":qt_widgets", ":qt_opengl", ":qt_gui", ":qt_core"]),
    ("concurrent", "QtConcurrent", "Qt6Concurrent", [":qt_core"]),
    ("core5_compat", "QtCore5Compat", "Qt6Core5Compat", [":qt_core"]),
    ("data_visualization", "QtDataVisualization", "Qt6DataVisualization", [":qt_opengl", ":qt_gui", ":qt_core"]),
    ("opengl", "QtOpenGL", "Qt6OpenGL", [":qt_gui", ":qt_core"]),
    ("designer", "QtDesigner", "Qt6Designer", [":qt_xml", ":qt_opengl_widgets", ":qt_widgets", ":qt_gui", ":qt_core"]),
    ("designer_components", "QtDesigner", "Qt6Designer", [":qt_designer", ":qt_xml", ":qt_widgets", ":qt_gui", ":qt_core"]),
    ("help", "QtHelp", "Qt6Help", [":qt_sql", ":qt_widgets", ":qt_gui", ":qt_core"]),
    # ("json_rpc", "QtJsonRpc", "Qt6JsonRpc", [":qt_core"]),
    # ("language_server", "QtLanguageServer", "Qt6LanguageServer", [":qt_json_rpc", ":qt_core"]),
    ("multimedia", "QtMultimedia", "Qt6Multimedia", [":qt_network", ":qt_gui", ":qt_core"]),
    ("multimedia_widgets", "QtMultimediaWidgets", "Qt6MultimediaWidgets", [":qt_multimedia", ":qt_widgets", ":qt_gui", ":qt_core"]),
    ("network", "QtNetwork", "Qt6Network", [":qt_core"]),
    ("network_auth", "QtNetworkAuth", "Qt6NetworkAuth", [":qt_network", ":qt_core"]),
    ("nfc", "QtNfc", "Qt6Nfc", [":qt_core"]),
    ("opengl_widgets", "QtOpenGLWidgets", "Qt6OpenGLWidgets", [":qt_opengl", ":qt_widgets", ":qt_gui", ":qt_core"]),
    # ("pdf", "QtPdf", "Qt6Pdf", [":qt_gui", ":qt_network", ":qt_core"]),
    # ("pdf_widgets", "Qt6PdfWidgets", "Qt6PdfWidgets", [":qt_pdf", ":qt_widgets", ":qt_gui", ":qt_core"]),
    ("widgets", "QtWidgets", "Qt6Widgets", [":qt_core", ":qt_gui"]),
    ("positioning", "QtPositioning", "Qt6Positioning", [":qt_core"]),
    ("print_support", "QtPrintSupport", "Qt6PrintSupport", [":qt_widgets", ":qt_gui", ":qt_core"]),
    ("remote_objects", "QtRemoteObjects", "Qt6RemoteObjects", [":qt_network", ":qt_core"]),
    ("scxml", "QtScxml", "Qt6Scxml", [":qt_core"]),
    ("sensors", "QtSensors", "Qt6Sensors", [":qt_core"]),
    ("serial_bus", "QtSerialBus", "Qt6SerialBus", [":qt_network", ":qt_serial_port", ":qt_core"]),
    ("serial_port", "QtSerialPort", "Qt6SerialPort", [":qt_core"]),
    ("shader_tools", "QtShaderTools", "Qt6ShaderTools", [":qt_gui", ":qt_core"]),
    ("sql", "QtSql", "Qt6Sql", [":qt_core"]),
    ("state_machine", "QtStateMachine", "Qt6StateMachine", [":qt_gui", ":qt_core"]),
    ("svg", "QtSvg", "Qt6Svg", [":qt_gui", ":qt_core"]),
    ("svg_widgets", "QtSvgWidgets", "Qt6SvgWidgets", ["qt_svg", ":qt_gui", ":qt_core"]),
    ("test", "QtTest", "Qt6Test", [":qt_core"]),
    ("ui_tools", "QtUiTools", "Qt6UiTools", [":qt_opengl_widgets", ":qt_widgets", ":qt_gui", ":qt_core"]),
    ("virtual_kerboard", "QtVirtualKeyboard", "Qt6VirtualKeyboard", [":qt_quick", ":qt_qml", ":qt_gui", ":qt_core"]),
    ("web_channel", "QtWebChannel", "Qt6WebChannel", [":qt_qml", ":qt_core"]),
    ("web_engine_core", "QtWebEngineCore", "Qt6WebEngineCore", [
        ":qt_quick", ":qt_gui", ":qt_web_channel", ":qt_qml", ":qt_network", ":qt_positioning", ":qt_core",
    ]),
    ("web_engine_widgets", "QtWebEngineWidgets", "Qt6WebEngineWidgets", [":qt_quick_widgets", ":qt_web_engine_core", ":qt_print_support", ":qt_widgets", ":qt_gui", ":qt_core"]),
    ("web_sockets", "QtWebSockets", "Qt6WebSockets", [":qt_network", ":qt_core"]),
    ("web_view", "QtWebView", "Qt6WebView", [":qt_core"]),
    ("xml", "QtXml", "Qt6Xml", [":qt_core"]),
    ("3d_animation", "Qt3DAnimation", "Qt63DAnimation", [":qt_3d_render", ":qt_3d_core", ":qt_gui", ":qt_core"]),
    ("3d_core", "Qt3DCore", "Qt63DCore", [":qt_concurrent", ":qt_network", ":qt_gui", ":qt_core"]),
    ("3d_extras", "Qt3DExtras", "Qt63DExtras", [":qt_3d_input", ":qt_3d_logic", ":qt_3d_render", ":qt_3d_core", ":qt_gui", ":qt_core"]),
    ("3d_input", "Qt3DInput", "Qt63DInput", [":qt_3d_core", ":qt_gui", ":qt_core"]),
    ("3d_logic", "Qt3DLogic", "Qt63DLogic", [":qt_3d_core", ":qt_core"]),


    ## qml related library
    ("qml_charts", "QtChartsQml", "Qt6ChartsQml", [":qt_quick", ":qt_qml", ":qt_charts", ":qt_opengl", ":qt_widgets", ":qt_gui", ":qt_core"]),
    ("qml_workerscript", "QtQmlWorkerScript", "Qt6QmlWorkerScript", [":qt_qml", ":qt_network", ":qt_core"]),
    ("qml_multimedia_quick", "QtMultimediaQuick", "Qt6MultimediaQuick", [":qt_multimedia", ":qt_quick", ":qt_gui", ":qt_qml", ":qt_core"]),
    ("qml", "QtQml", "Qt6Qml", [":qt_core", ":qt_network"]),
    ("qml_core", "QtQmlCore", "Qt6QmlCore", [":qt_qml", "qt_core"]),
    ("qml_models", "QtQmlModels", "Qt6QmlModels", [":qt_qml", "qt_core"]),
    ("qml_local_storage", "QtQmlLocalStorage", "Qt6QmlLocalStorage", [":qt_qml", ":qt_sql", ":qt_core"]),
    ("qml_xml_list_model", "QtQmlXmlListModel", "Qt6QmlXmlListModel", [":qt_qml", ":qt_network", ":qt_core"]),
    ("qml_remote_objects", "QtRemoteObjectsQml", "Qt6RemoteObjectsQml", [":qt_remote_objects", ":qt_qml", ":qt_core"]),
    ("qml_scxml", "QtScxmlQml", "Qt6ScxmlQml", [":qt_scxml", ":qt_qml", ":qt_core"]),
    ("qml_state_machine", "QtStateMachineQml", "Qt6StateMachineQml", [":qt_state_machine", ":qt_qml", ":qt_core"]),
    ## qt quick
    ("quick", "QtQuick", "Qt6Quick", [":qt_gui", ":qt_qml"]),
    # ("quick_pdf", "QtPdfQuick", "Qt6PdfQuick", [":qt_quick", ":qt_pdf", ":qt_gui", ":qt_qml", ":qt_core"]),
    ("quick_positioning", "QtPositioningQuick", "Qt6PositioningQuick", [":qt_positioning", ":qt_quick", ":qt_qml", ":qt_core"]),
    ("quick_3d_assert_import", "QtQuick3DAssetImport", "Qt6Quick3DAssetImport", [":qt_core"]),
    ("quick_3d_assert_utils", "QtQuick3DAssetUtils", "Qt6Quick3DAssetUtils", [
        ":qt_quick_3d_assert_import", ":qt_quick_3d", ":qt_quick_3d_runtime_render", ":qt_quick_3d_utils",
        ":qt_quick_timeline", ":qt_quick", ":qt_gui", ":qt_qml", ":qt_core",
    ]),
    ("quick_web_engine", "QtWebEngineQuick", "Qt6WebEngineQuick", [
        ":qt_web_engine_core", ":qt_quick", ":qt_gui", ":qt_web_channel", ":qt_qml", ":qt_network", ":qt_core"
    ]),
    ("quick_3d_effects", "QtQuick3DEffects", "Qt6Quick3DEffects", [":qt_qml", ":qt_core"]),
    # ("quick_3d_glsl_parser", "QtQuick3DGlslParser", "Qt6Quick3DGlslParser", [":qt_core"]),
    ("quick_3d_helpers", "QtQuick3DHelpers", "Qt6Quick3DHelpers", [":qt_quick_3d", ":qt_gui", ":qt_qml", ":qt_core"]),
    ("quick_3d_ibl_baker", "QtQuick3DIblBaker", "Qt6Quick3DIblBaker", [":qt_quick_3d_runtime_render", ":qt_gui", ":qt_core"]),
    # ("quick_3d_particle_effects", "Qt6Quick3DParticleEffects", "Qt6Quick3DParticleEffects", [":qt_qml", ":qt_core"]),
    ("quick_3d_particles", "QtQuick3DParticles", "Qt6Quick3DParticles", [":qt_quick_3d", ":qt_quick_3d_runtime_render", ":qt_quick_3d_utils",
                                                                        ":qt_gui", ":qt_qml", ":qt_core"]),
    ("quick_3d_runtime_render", "QtQuick3DRuntimeRender", "Qt6Quick3DRuntimeRender", [":qt_quick_3d_utils", ":qt_quick", ":qt_shader_tools", ":qt_gui", ":qt_core"]),
    ("quick_3d_utils", "QtQuick3DUtils", "Qt6Quick3DUtils", [":qt_gui", ":qt_core"]),
    ("quick_controls2", "QtQuickControls2", "Qt6QuickControls2", [":qt_quick_templates2", ":qt_gui", ":qt_qml", ":qt_core"]),
    ("quick_controls2_impl", "QtQuickControls2Impl", "Qt6QuickControls2Impl", [":qt_quick_templates2", ":qt_quick", ":qt_gui", ":qt_qml", ":qt_core"]),
    ("quick_dialogs2", "QtQuickDialogs2", "Qt6QuickDialogs2", [":qt_quick_dialogs2_quick_impl", ":qt_quick_dialogs2_utils", ":qt_quick", ":qt_gui", ":qt_qml", ":qt_core"]),
    ("quick_dialogs2_quick_impl", "Qt6QuickDialogs2QuickImpl", "Qt6QuickDialogs2QuickImpl", [
        ":qt_quick_templates2",
        ":qt_quick_controls2_impl",
        ":qt_quick", ":qt_gui", ":qt_qml", ":qt_quick_dialogs2_utils", ":qt_core",
    ]),
    ("quick_dialogs2_utils", "QtQuickDialogs2Utils", "Qt6QuickDialogs2Utils", [":qt_gui", ":qt_core"]),
    ("quick_layouts", "QtQuickLayouts", "Qt6QuickLayouts", [":qt_quick", ":qt_qml", ":qt_gui", ":qt_core"]),
    ("quick_particles", "Qt6QuickParticles", "Qt6QuickParticles", [":qt_quick", ":qt_qml", ":qt_gui", ":qt_core"]),
    ("quick_shapes", "QtQuickShapes", "Qt6QuickShapes", [":qt_quick", ":qt_qml", ":qt_gui", ":qt_core"]),
    ("quick_templates2", "QtQuickTemplates2", "Qt6QuickTemplates2", [":qt_quick", ":qt_qml", ":qt_qml_models", ":qt_gui", ":qt_core"]),
    ("quick_test", "QtQuickTest", "Qt6QuickTest", [":qt_quick", ":qt_gui", ":qt_qml", ":qt_test", ":qt_core"]),
    ("quick_timeline", "QtQuickTimeline", "Qt6QuickTimeline", [":qt_quick", ":qt_gui", ":qt_qml", ":qt_core"]),
    ("quick_widgets", "QtQuickWidgets", "Qt6QuickWidgets", [":qt_quick", ":qt_qml", ":qt_widgets", ":qt_opengl", ":qt_gui", ":qt_core"]),
    ("quick_3d", "QtQuick3D", "Qt6Quick3D", [":qt_quick_3d_runtime_render", ":qt_quick", ":qt_qml_models", ":qt_qml", ":qt_quick_3d_utils", ":qt_gui", ":qt_core"]),
    ("quick_sensors", "QtSensorsQuick", "Qt6SensorsQuick", [":qt_sensors", ":qt_qml", ":qt_core"]),
    ("quick_web_view", "QtWebViewQuick", "Qt6WebViewQuick", [":qt_quick", ":qt_qml", ":qt_web_view", ":qt_gui", ":qt_core"]),
    ("3d_quick", "Qt3DQuick", "Qt63DQuick", [":qt_3d_core", ":qt_quick", ":qt_gui", ":qt_qml_models", ":qt_qml", ":qt_core"]),
    ("3d_quick_anomation", "Qt3DQuickAnimation", "Qt63DQuickAnimation", [":qt_3d_animation", ":qt_qml", ":qt_3d_core", ":qt_core"]),
    ("3d_quick_extras", "Qt3DQuickExtras", "Qt63DQuickExtras", [":qt_3d_extras", ":qt_3d_input", ":qt_3d_render", ":qt_3d_logic", ":qt_3d_quick",
                                                ":qt_3d_core", ":qt_gui", ":qt_qml", ":qt_core"]),
    ("3d_quick_input", "Qt3DQuickInput", "Qt63DQuickInput", [":qt_3d_input", ":qt_3d_core", ":qt_qml", ":qt_core"]),
    ("3d_quick_render", "Qt3DQuickRender", "Qt63DQuickRender", [":qt_qml", ":qt_3d_render", ":qt_3d_core", ":qt_core"]),
    ("3d_quick_scene_2d", "Qt3DQuickScene2D", "Qt63DQuickScene2D", [":qt_quick", ":qt_qml", ":qt_3d_render", ":qt_opengl", ":qt_3d_core", ":qt_gui", ":qt_core"]),
    ("3d_render", "Qt3DRender", "Qt63DRender", [":qt_3d_core", ":qt_concurrent", ":qt_gui", ":qt_core"]),
    ## labs
    ("labs_animation", "QtLabsAnimation", "Qt6LabsAnimation", [":qt_qml", ":qt_core"]),
    ("labs_folder_list_model", "QtLabsFolderListModel", "Qt6LabsFolderListModel", [":qt_qml", ":qt_core"]),
    ("labs_qml_models", "QtLabsQmlModels", "Qt6LabsQmlModels", [":qt_qml_models", ":qt_qml", ":qt_core"]),
    ("labs_settings", "QtLabsSettings", "Qt6LabsSettings", [":qt_qml", ":qt_core"]),
    ("labs_shared_image", "QtLabsSharedImage", "Qt6LabsSharedImage", [":qt_quick", ":qt_qml", ":qt_gui", ":qt_core"]),
    ("labs_wave_front_mesh", "QtLabsWavefrontMesh", "Qt6LabsWavefrontMesh", [":qt_quick", ":qt_qml", ":qt_gui", ":qt_core"]),
]
