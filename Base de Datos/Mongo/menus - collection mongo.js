db.menus.insertMany(
    [{
            "_id": ObjectId("59287f2e2007cddf4f2ab686"),
            "code": "MN_300",
            "name": "Cargas",
            "type": "toggle",
            "active": false,
            "pages": [{
                    "code": "MN_310",
                    "name": "Carga de Archivo",
                    "title": "Carga de Archivo",
                    "type": "link",
                    "active": false,
                    "url": "home.app.load"
                },
                {
                    "code": "MN_312",
                    "name": "Modificación de Registros Históricos en Lote",
                    "title": "Cargas - Modificación de Registro Histórico en Lote",
                    "type": "link",
                    "active": false,
                    "url": "home.upload-corrections-batch"
                },
                {
                    "code": "MN_313",
                    "name": "Modificación de Registro Histórico En Línea",
                    "title": "Cargas - Modificación de Registro Histórico en Línea",
                    "type": "link",
                    "active": false,
                    "url": "home.upload-corrections-online"
                }
            ]
        },
        {
            "_id": ObjectId("59287f2e2007cddf4f2ab687"),
            "code": "MN_200",
            "name": "Consultas",
            "type": "toggle",
            "active": false,
            "pages": [{
                    "code": "MN_201",
                    "name": "En Línea",
                    "title": "Consultas - En Línea",
                    "type": "link",
                    "active": false,
                    "url": "home.consult.online"
                },
                {
                    "code": "MN_202",
                    "name": "En Lote",
                    "title": "Consultas - En Lote",
                    "type": "link",
                    "active": false,
                    "url": "home.consult.batch"
                }
            ]
        },
        {
            "_id": ObjectId("59287f2e2007cddf4f2ab688"),
            "code": "MN_410",
            "name": "Reportes de Calidad",
            "type": "toggle",
            "active": false,
            "pages": [{
                    "code": "MN_411",
                    "name": "Calidad del Archivo de Carga",
                    "title": "Reportes de Calidad - Calidad del Archivo de Carga",
                    "type": "link",
                    "active": false,
                    "url": "home.report11"
                },
                {
                    "code": "MN_412",
                    "name": "Histórico de Calidad",
                    "title": "Reportes de Calidad - Histórico de Calidad",
                    "type": "link",
                    "active": false,
                    "url": "home.report0"
                }
            ]
        },
        {
            "_id": ObjectId("59287f2e2007cddf4f2ab689"),
            "code": "MN_440",
            "name": "Reportes de Alertas Asociadas",
            "type": "toggle",
            "active": false,
            "pages": [{
                    "code": "MN_421",
                    "name": "Alertas En Línea",
                    "title": "Reportes de Alertas Asociadas - Alertas En Línea",
                    "type": "link",
                    "active": false,
                    "url": "home.report5"
                },
                {
                    "code": "MN_422",
                    "name": "Historico por Regla",
                    "title": "Reportes de Alertas Asociadas - Historico por Regla",
                    "type": "link",
                    "active": false,
                    "url": "home.report6"
                }
            ]
        },
        {
            "_id": ObjectId("59287f2e2007cddf4f2ab68a"),
            "code": "MN_430",
            "name": "Reportes de Carga vs Proveedores",
            "type": "toggle",
            "active": false,
            "pages": [{
                    "code": "MN_431",
                    "name": "Histórico Resultados Generales",
                    "title": "Reportes de Carga vs Proveedores - Histórico Resultados Generales",
                    "type": "link",
                    "active": false,
                    "url": "home.report1"
                },
                {
                    "code": "MN_432",
                    "name": "Histórico por Tipo de Proveedor",
                    "title": "Reportes de Carga vs Proveedores - Histórico por Tipo de Proveedor",
                    "type": "link",
                    "active": false,
                    "url": "home.report3"
                },
                {
                    "code": "MN_433",
                    "name": "Histórico por Compañía",
                    "title": "Reportes de Carga vs Proveedores - Histórico por Compañía",
                    "type": "link",
                    "active": false,
                    "url": "home.report7"
                },
                {
                    "code": "MN_443",
                    "name": "Graficador",
                    "title": "Reportes de Carga vs Proveedores - Graficador de Reglas Activas",
                    "type": "link",
                    "active": false,
                    "url": "home.report12"
                }
            ]
        },
        {
            "_id": ObjectId("59287f2e2007cddf4f2ab68b"),
            "code": "MN_440",
            "name": "Histórico de Calidad",
            "type": "toggle",
            "active": false,
            "pages": [{
                    "code": "MN_441",
                    "name": "De Carga",
                    "title": "Histórico de Calidad - De Carga",
                    "type": "link",
                    "active": false,
                    "url": "home.report0"
                },
                {
                    "code": "MN_442",
                    "name": "Reglas Activadas",
                    "title": "Histórico de Calidad - Reglas Activadas",
                    "type": "link",
                    "active": false,
                    "url": "home.report23"
                }
            ]
        },
        {
            "_id": ObjectId("59287f2e2007cddf4f2ab68c"),
            "code": "MN_500",
            "name": "Monitoreo",
            "type": "toggle",
            "active": false,
            "pages": [{
                "code": "MN_512",
                "name": "Alertas por Regla",
                "title": "Alertas por Regla",
                "type": "link",
                "active": false,
                "url": "home.report6"
            }]
        },
        {
            "_id": ObjectId("59287f2e2007cddf4f2ab68d"),
            "code": "MN_100",
            "name": "Administración",
            "type": "toggle",
            "active": false,
            "pages": [{
                    "code": "MN_101",
                    "name": "Catálogos",
                    "title": "Administración - Catálogos",
                    "type": "link",
                    "active": false,
                    "url": "home.catalog"
                },
                {
                    "code": "MN_102",
                    "name": "Usuarios",
                    "title": "Administración - Usuarios",
                    "type": "link",
                    "active": false,
                    "url": "home.user"
                },
                {
                    "code": "MN_103",
                    "name": "Roles",
                    "title": "Administración - Roles",
                    "type": "link",
                    "active": false,
                    "url": "home.role"
                },
                {
                    "code": "MN_104",
                    "name": "Reglas",
                    "title": "Administración - Reglas",
                    "type": "link",
                    "active": false,
                    "url": "home.app.rule"
                },
                {
                    "code": "MN_106",
                    "name": "Autorizaciones",
                    "title": "Autorizaciones",
                    "type": "link",
                    "active": false,
                    "url": "home.check"
                },
                {
                    "code": "MN_107",
                    "name": "Autorización",
                    "title": "Solicitud de Autorización",
                    "type": "link",
                    "active": false,
                    "url": "home.authorization"
                }
            ]
        },
        {
            "_id": ObjectId("598b88afb3425440232d66ad"),
            "code": "MN_550",
            "name": "Descargas",
            "type": "toggle",
            "active": false,
            "pages": [{
                    "code": "MN_551",
                    "name": "Descarga Histórico",
                    "title": "Descarga Histórico",
                    "type": "link",
                    "active": false,
                    "url": "home.descargas.historical"
                },
                {
                    "code": "MN_552",
                    "name": "Listas Especiales",
                    "title": "Listas Especiales",
                    "type": "link",
                    "active": false,
                    "url": "home.descargas.specialList"
                }
            ]
        }
    ]
);