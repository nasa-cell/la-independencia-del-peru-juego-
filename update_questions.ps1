$updates = @{
    "page1.html" = @{ id = 'q-grau'; answers = "['b','b','b','a','b','b','b','a','b','c']"; questions = @'
            <div class="grid-preguntas">
                <div class="pregunta"><p>1. ¿Con qué famoso pseudónimo se conoce históricamente a Miguel Grau?</p>
                    <label><input type="radio" name="grau-p1" value="a"> El Brujo de los Andes</label>
                    <label><input type="radio" name="grau-p1" value="b"> El Caballero de los Mares</label>
                    <label><input type="radio" name="grau-p1" value="c"> El Soldado de la Ley</label>
                </div>
                <div class="pregunta"><p>2. ¿Cuál era el nombre del emblemático monitor que comandaba Miguel Grau?</p>
                    <label><input type="radio" name="grau-p2" value="a"> Independencia</label>
                    <label><input type="radio" name="grau-p2" value="b"> Huáscar</label>
                    <label><input type="radio" name="grau-p2" value="c"> Unión</label>
                </div>
                <div class="pregunta"><p>3. ¿En qué gran conflicto internacional del siglo XIX participó Miguel Grau?</p>
                    <label><input type="radio" name="grau-p3" value="a"> Combate del 2 de Mayo</label>
                    <label><input type="radio" name="grau-p3" value="b"> Guerra del Pacífico</label>
                    <label><input type="radio" name="grau-p3" value="c"> Guerra de la Independencia</label>
                </div>
                <div class="pregunta"><p>4. ¿Cuál fue la ciudad natal de Miguel Grau?</p>
                    <label><input type="radio" name="grau-p4" value="a"> Piura</label>
                    <label><input type="radio" name="grau-p4" value="b"> Lima</label>
                    <label><input type="radio" name="grau-p4" value="c"> Arequipa</label>
                </div>
                <div class="pregunta"><p>5. ¿Qué noble acción humanitaria tras el hundimiento de la nave chilena Esmeralda le valió su legendario apodo?</p>
                    <label><input type="radio" name="grau-p5" value="a"> Devolver el buque enemigo intacto</label>
                    <label><input type="radio" name="grau-p5" value="b"> Rescatar a los marinos sobrevivientes y escribir una carta de condolencias a la viuda del capitán Prat</label>
                    <label><input type="radio" name="grau-p5" value="c"> Firmar un armisticio inmediato</label>
                </div>
                <div class="pregunta"><p>6. ¿Quién fue la esposa de Miguel Grau a quien dirigió sus más conmovedoras cartas desde el frente?</p>
                    <label><input type="radio" name="grau-p6" value="a"> Mercedes Cabello</label>
                    <label><input type="radio" name="grau-p6" value="b"> Dolores Cabero</label>
                    <label><input type="radio" name="grau-p6" value="c"> Micaela Bastidas</label>
                </div>
                <div class="pregunta"><p>7. ¿En qué histórico enfrentamiento naval entregó su vida Miguel Grau por defender al Perú?</p>
                    <label><input type="radio" name="grau-p7" value="a"> Combate de Iquique</label>
                    <label><input type="radio" name="grau-p7" value="b"> Combate de Angamos</label>
                    <label><input type="radio" name="grau-p7" value="c"> Combate de Abtao</label>
                </div>
                <div class="pregunta"><p>8. ¿Qué rango militar ostentaba Grau en el momento de su sacrificio en el monitor?</p>
                    <label><input type="radio" name="grau-p8" value="a"> Capitán de Navío (ascendido luego a Almirante)</label>
                    <label><input type="radio" name="grau-p8" value="b"> General de Brigada</label>
                    <label><input type="radio" name="grau-p8" value="c"> Coronel de Infantería</label>
                </div>
                <div class="pregunta"><p>9. ¿Cuál de los siguientes valores define de mejor manera el legado de Miguel Grau?</p>
                    <label><input type="radio" name="grau-p9" value="a"> La ambición territorial</label>
                    <label><input type="radio" name="grau-p9" value="b"> La caballerosidad, el desprendimiento y el profundo patriotismo</label>
                    <label><input type="radio" name="grau-p9" value="c"> El desprecio por el adversario</label>
                </div>
                <div class="pregunta"><p>10. ¿En qué año ocurrió el Combate de Angamos donde Grau ascendió a la inmortalidad?</p>
                    <label><input type="radio" name="grau-p10" value="a"> 1821</label>
                    <label><input type="radio" name="grau-p10" value="b"> 1866</label>
                    <label><input type="radio" name="grau-p10" value="c"> 1879</label>
                </div>
            </div>
'@ }
    "page2.html" = @{ id='q-tupac'; answers="['b','b','b','b','b','a','b','a','b','b']"; questions=@'
            <div class="grid-preguntas">
                <div class="pregunta"><p>1. ¿Cuál era el nombre verdadero y completo de Túpac Amaru II?</p>
                    <label><input type="radio" name="tupac-p1" value="a"> José Olaya Balandra</label>
                    <label><input type="radio" name="tupac-p1" value="b"> José Gabriel Condorcanqui Noguera</label>
                    <label><input type="radio" name="tupac-p1" value="c"> Juan Santos Atahualpa</label>
                </div>
                <div class="pregunta"><p>2. ¿En qué año inició la gran rebelión indígena liderada por Túpac Amaru II?</p>
                    <label><input type="radio" name="tupac-p2" value="a"> 1532</label>
                    <label><input type="radio" name="tupac-p2" value="b"> 1780</label>
                    <label><input type="radio" name="tupac-p2" value="c"> 1821</label>
                </div>
                <div class="pregunta"><p>3. ¿Qué cargo de autoridad tradicional poseía?</p>
                    <label><input type="radio" name="tupac-p3" value="a"> Corregidor español</label>
                    <label><input type="radio" name="tupac-p3" value="b"> Cacique o Curaca</label>
                    <label><input type="radio" name="tupac-p3" value="c"> Alcalde de indios</label>
                </div>
                <div class="pregunta"><p>4. ¿Contra qué abusos específicos del sistema colonial se rebeló?</p>
                    <label><input type="radio" name="tupac-p4" value="a"> Prohibición del comercio exterior</label>
                    <label><input type="radio" name="tupac-p4" value="b"> Abusos de corregidores, reparto y mita</label>
                    <label><input type="radio" name="tupac-p4" value="c"> Cobro del diezmo eclesiástico únicamente</label>
                </div>
                <div class="pregunta"><p>5. ¿Quién fue su valiente esposa y co-líder?</p>
                    <label><input type="radio" name="tupac-p5" value="a"> María Parado de Bellido</label>
                    <label><input type="radio" name="tupac-p5" value="b"> Micaela Bastidas Puyucahua</label>
                    <label><input type="radio" name="tupac-p5" value="c"> Clorinda Matto de Turner</label>
                </div>
                <div class="pregunta"><p>6. ¿Qué odiado corregidor español fue capturado y enjuiciado al inicio de la rebelión?</p>
                    <label><input type="radio" name="tupac-p6" value="a"> Antonio de Arriaga</label>
                    <label><input type="radio" name="tupac-p6" value="b"> José de Canterac</label>
                    <label><input type="radio" name="tupac-p6" value="c"> Francisco de Toledo</label>
                </div>
                <div class="pregunta"><p>7. ¿En qué plaza histórica fue sentenciado y ejecutado?</p>
                    <label><input type="radio" name="tupac-p7" value="a"> Plaza de Armas de Lima</label>
                    <label><input type="radio" name="tupac-p7" value="b"> Plaza de Armas del Cusco</label>
                    <label><input type="radio" name="tupac-p7" value="c"> Plaza San Martín</label>
                </div>
                <div class="pregunta"><p>8. ¿Qué método cruel usaron los españoles para desmembrarlo?</p>
                    <label><input type="radio" name="tupac-p8" value="a"> Atar extremidades a cuatro caballos</label>
                    <label><input type="radio" name="tupac-p8" value="b"> Lanzarlo desde una torre</label>
                    <label><input type="radio" name="tupac-p8" value="c"> Enterrarlo bajo una avalancha</label>
                </div>
                <div class="pregunta"><p>9. ¿Cuál era el fin supremo de su levantamiento?</p>
                    <label><input type="radio" name="tupac-p9" value="a"> Rebaja de precios en arrierajes</label>
                    <label><input type="radio" name="tupac-p9" value="b"> Acabar con explotación colonial y emancipar al pueblo</label>
                    <label><input type="radio" name="tupac-p9" value="c"> Ser nombrado Virrey del Perú</label>
                </div>
                <div class="pregunta"><p>10. ¿Por qué es figura trascendental en América Latina?</p>
                    <label><input type="radio" name="tupac-p10" value="a"> Fundar la ciudad imperial del Cusco</label>
                    <label><input type="radio" name="tupac-p10" value="b"> Precursor de la lucha por la libertad y justicia social</label>
                    <label><input type="radio" name="tupac-p10" value="c"> Abrir nuevas rutas de comercio minero</label>
                </div>
            </div>
'@ }
    "page3.html" = @{ id='q-olaya'; answers="['b','b','b','b','b','b','b','b','b','a']"; questions=@'
            <div class="grid-preguntas">
                <div class="pregunta"><p>1. ¿Cuál era el modesto pero vital oficio de José Olaya Balandra?</p>
                    <label><input type="radio" name="olaya-p1" value="a"> Sastre de la corte</label>
                    <label><input type="radio" name="olaya-p1" value="b"> Pescador artesanal</label>
                    <label><input type="radio" name="olaya-p1" value="c"> Carpintero de ribera</label>
                </div>
                <div class="pregunta"><p>2. ¿De qué villa costera era oriundo José Olaya?</p>
                    <label><input type="radio" name="olaya-p2" value="a"> Miraflores</label>
                    <label><input type="radio" name="olaya-p2" value="b"> Chorrillos</label>
                    <label><input type="radio" name="olaya-p2" value="c"> Ancón</label>
                </div>
                <div class="pregunta"><p>3. ¿Qué tarea secreta cumplía Olaya a favor de la causa patriota?</p>
                    <label><input type="radio" name="olaya-p3" value="a"> Transportar municiones en carreta</label>
                    <label><input type="radio" name="olaya-p3" value="b"> Llevar correspondencia nadando entre Callao y Lima</label>
                    <label><input type="radio" name="olaya-p3" value="c"> Espiar en los palacios virreinales</label>
                </div>
                <div class="pregunta"><p>4. ¿A qué causa entregó su vida?</p>
                    <label><input type="radio" name="olaya-p4" value="a"> Sumisión ante la Corona Española</label>
                    <label><input type="radio" name="olaya-p4" value="b"> Causa Independentista y Republicana del Perú</label>
                    <label><input type="radio" name="olaya-p4" value="c"> Beneficio de flotas británicas</label>
                </div>
                <div class="pregunta"><p>5. ¿Qué frase dijo antes de ser fusilado?</p>
                    <label><input type="radio" name="olaya-p5" value="a"> "¡Tengo deberes sagrados..."</label>
                    <label><input type="radio" name="olaya-p5" value="b"> "¡Si mil vidas tuviera, dichoso las daría por mi patria!"</label>
                    <label><input type="radio" name="olaya-p5" value="c"> "¡Viva el Rey y la patria española!"</label>
                </div>
                <div class="pregunta"><p>6. ¿Dónde fue capturado?</p>
                    <label><input type="radio" name="olaya-p6" value="a"> En la pampa de Amancaes</label>
                    <label><input type="radio" name="olaya-p6" value="b"> Cerca de la Plaza Mayor de Lima</label>
                    <label><input type="radio" name="olaya-p6" value="c"> En los acantilados de la Costa Verde</label>
                </div>
                <div class="pregunta"><p>7. ¿Qué táctica se usó para obligarlo a confesar?</p>
                    <label><input type="radio" name="olaya-p7" value="a"> Ofrecer flota moderna</label>
                    <label><input type="radio" name="olaya-p7" value="b"> Brutales torturas y azotes</label>
                    <label><input type="radio" name="olaya-p7" value="c"> Destierro a una isla</label>
                </div>
                <div class="pregunta"><p>8. ¿Qué hizo con los mensajes antes de ser atrapado?</p>
                    <label><input type="radio" name="olaya-p8" value="a"> Los entregó a un guardia</label>
                    <label><input type="radio" name="olaya-p8" value="b"> Se deshizo de las cartas para no comprometer a nadie</label>
                    <label><input type="radio" name="olaya-p8" value="c"> Las escondió en el sombrero del general español</label>
                </div>
                <div class="pregunta"><p>9. ¿En qué año se consumó su sacrificio?</p>
                    <label><input type="radio" name="olaya-p9" value="a"> 1821</label>
                    <label><input type="radio" name="olaya-p9" value="b"> 1823</label>
                    <label><input type="radio" name="olaya-p9" value="c"> 1879</label>
                </div>
                <div class="pregunta"><p>10. ¿Qué valor representa su historia?</p>
                    <label><input type="radio" name="olaya-p10" value="a"> Lealtad, discreción y heroísmo del ciudadano común</label>
                    <label><input type="radio" name="olaya-p10" value="b"> Astucia para generar riquezas</label>
                    <label><input type="radio" name="olaya-p10" value="c"> Indiferencia ante la sociedad</label>
                </div>
            </div>
'@ }
    "page4.html" = @{ id='q-bellido'; answers="['b','b','a','b','b','a','b','a','a','b']"; questions=@'
            <div class="grid-preguntas">
                <div class="pregunta"><p>1. ¿En qué región nació y actuó María Parado de Bellido?</p>
                    <label><input type="radio" name="parado-p1" value="a"> Puno</label>
                    <label><input type="radio" name="parado-p1" value="b"> Ayacucho</label>
                    <label><input type="radio" name="parado-p1" value="c"> Cajamarca</label>
                </div>
                <div class="pregunta"><p>2. ¿Cómo cooperaba con las guerrillas patriotas?</p>
                    <label><input type="radio" name="parado-p2" value="a"> Fabricando pólvora</label>
                    <label><input type="radio" name="parado-p2" value="b"> Enviando cartas informativas</label>
                    <label><input type="radio" name="parado-p2" value="c"> Ocultando caballos</label>
                </div>
                <div class="pregunta"><p>3. Como no sabía escribir, ¿cómo redactaba la información?</p>
                    <label><input type="radio" name="parado-p3" value="a"> Con jeroglíficos</label>
                    <label><input type="radio" name="parado-p3" value="b"> Dictando a un amigo de confianza</label>
                    <label><input type="radio" name="parado-p3" value="c"> Enviando señales de humo</label>
                </div>
                <div class="pregunta"><p>4. ¿Quién ordenó su persecución, captura y ejecución?</p>
                    <label><input type="radio" name="parado-p4" value="a"> José de Canterac</label>
                    <label><input type="radio" name="parado-p4" value="b"> José Carratalá</label>
                    <label><input type="radio" name="parado-p4" value="c"> Virrey La Serna</label>
                </div>
                <div class="pregunta"><p>5. ¿Por qué la sentenciaron al fusilamiento?</p>
                    <label><input type="radio" name="parado-p5" value="a"> Por robar planos</label>
                    <label><input type="radio" name="parado-p5" value="b"> Por negarse a delatar a los patriotas</label>
                    <label><input type="radio" name="parado-p5" value="c"> Por intentar salir del país</label>
                </div>
                <div class="pregunta"><p>6. ¿Qué familiares combatían con los patriotas?</p>
                    <label><input type="radio" name="parado-p6" value="a"> Su esposo y sus hijos</label>
                    <label><input type="radio" name="parado-p6" value="b"> Sus tíos maternos</label>
                    <label><input type="radio" name="parado-p6" value="c"> Ninguno</label>
                </div>
                <div class="pregunta"><p>7. ¿Qué temple mostró ante el pelotón?</p>
                    <label><input type="radio" name="parado-p7" value="a"> Imploró perdón</label>
                    <label><input type="radio" name="parado-p7" value="b"> Mantuvo dignidad y serenidad</label>
                    <label><input type="radio" name="parado-p7" value="c"> Intentó huir</label>
                </div>
                <div class="pregunta"><p>8. ¿A qué guerrilla enviaba cartas?</p>
                    <label><input type="radio" name="parado-p8" value="a"> San Martín en Lima</label>
                    <label><input type="radio" name="parado-p8" value="b"> Guerrillas de Cayetano Quirós</label>
                    <label><input type="radio" name="parado-p8" value="c"> Tropas del norte de Bolívar</label>
                </div>
                <div class="pregunta"><p>9. ¿Cómo se la reconoce en la historia del Perú?</p>
                    <label><input type="radio" name="parado-p9" value="a"> Heroína y mártir de la emancipación</label>
                    <label><input type="radio" name="parado-p9" value="b"> Primera mujer en el congreso</label>
                    <label><input type="radio" name="parado-p9" value="c"> Diseñadora textil</label>
                </div>
                <div class="pregunta"><p>10. ¿Cuál es el mensaje cívico de su vida?</p>
                    <label><input type="radio" name="parado-p10" value="a"> La traición es fácil</label>
                    <label><input type="radio" name="parado-p10" value="b"> La libertad exige lealtad y entrega moral</label>
                    <label><input type="radio" name="parado-p10" value="c"> Mejor mantenerse al margen</label>
                </div>
            </div>
'@ }
    "page5.html" = @{ id='q-sanmartin'; answers="['b','b','a','b','b','b','b','b','a','b']"; questions=@'
            <div class="grid-preguntas">
                <div class="pregunta"><p>1. ¿En qué actual nación nació José de San Martín?</p>
                    <label><input type="radio" name="indep-p1" value="a"> Perú</label>
                    <label><input type="radio" name="indep-p1" value="b"> Argentina</label>
                    <label><input type="radio" name="indep-p1" value="c"> Chile</label>
                </div>
                <div class="pregunta"><p>2. ¿Qué empresa militar comandó antes de llegar al Perú?</p>
                    <label><input type="radio" name="indep-p2" value="a"> Cruce de los Andes</label>
                    <label><input type="radio" name="indep-p2" value="b"> Navegación del Amazonas</label>
                    <label><input type="radio" name="indep-p2" value="c"> Expedición por los llanos</label>
                </div>
                <div class="pregunta"><p>3. ¿En qué fecha proclamó la Independencia del Perú?</p>
                    <label><input type="radio" name="indep-p3" value="a"> 28 de julio de 1821</label>
                    <label><input type="radio" name="indep-p3" value="b"> 9 de diciembre de 1824</label>
                    <label><input type="radio" name="indep-p3" value="c"> 2 de mayo de 1866</label>
                </div>
                <div class="pregunta"><p>4. ¿Dónde escuchó la proclama la multitud?</p>
                    <label><input type="radio" name="indep-p4" value="a"> Plaza Mayor de Lima</label>
                    <label><input type="radio" name="indep-p4" value="b"> Plaza de Armas de Trujillo</label>
                    <label><input type="radio" name="indep-p4" value="c"> Plaza de la Exposición</label>
                </div>
                <div class="pregunta"><p>5. Completa: "El Perú es libre... y por la justicia de su causa que..."</p>
                    <label><input type="radio" name="indep-p5" value="a"> ... el Rey comprende.</label>
                    <label><input type="radio" name="indep-p5" value="b"> ... Dios defiende.</label>
                    <label><input type="radio" name="indep-p5" value="c"> ... las armas peruanas imponen.</label>
                </div>
                <div class="pregunta"><p>6. ¿Qué título asumió San Martín?</p>
                    <label><input type="radio" name="indep-p6" value="a"> Dictador Supremo</label>
                    <label><input type="radio" name="indep-p6" value="b"> Protector del Perú</label>
                    <label><input type="radio" name="indep-p6" value="c"> Presidente Constitucional</label>
                </div>
                <div class="pregunta"><p>7. ¿Qué aves inspiraron la bandera?</p>
                    <label><input type="radio" name="indep-p7" value="a"> Parihuanas</label>
                    <label><input type="radio" name="indep-p7" value="b"> Cóndores</label>
                    <label><input type="radio" name="indep-p7" value="c"> Guacamayos</label>
                </div>
                <div class="pregunta"><p>8. ¿Qué institución fundó?</p>
                    <label><input type="radio" name="indep-p8" value="a"> Museo Nacional</label>
                    <label><input type="radio" name="indep-p8" value="b"> Biblioteca Nacional del Perú</label>
                    <label><input type="radio" name="indep-p8" value="c"> Casa de la Moneda</label>
                </div>
                <div class="pregunta"><p>9. ¿Con quién tuvo la Entrevista de Guayaquil?</p>
                    <label><input type="radio" name="indep-p9" value="a"> Simón Bolívar</label>
                    <label><input type="radio" name="indep-p9" value="b"> Antonio José de Sucre</label>
                    <label><input type="radio" name="indep-p9" value="c"> Francisco de Miranda</label>
                </div>
                <div class="pregunta"><p>10. ¿Qué sistema político prefería?</p>
                    <label><input type="radio" name="indep-p10" value="a"> República Federal</label>
                    <label><input type="radio" name="indep-p10" value="b"> Monarquía Constitucional</label>
                    <label><input type="radio" name="indep-p10" value="c"> Gobierno incaico colonial</label>
                </div>
            </div>
'@ }
    "page6.html" = @{ id='q-bolivar'; answers="['b','b','b','b','b','a','b','b','a','b']"; questions=@'
            <div class="grid-preguntas">
                <div class="pregunta"><p>1. ¿En qué país nació Simón Bolívar?</p>
                    <label><input type="radio" name="bolivar-p1" value="a"> Colombia</label>
                    <label><input type="radio" name="bolivar-p1" value="b"> Venezuela</label>
                    <label><input type="radio" name="bolivar-p1" value="c"> Ecuador</label>
                </div>
                <div class="pregunta"><p>2. ¿Por qué se le llama El Libertador?</p>
                    <label><input type="radio" name="bolivar-p2" value="a"> Liberar comercio</label>
                    <label><input type="radio" name="bolivar-p2" value="b"> Liderar campañas que emanciparon seis naciones</label>
                    <label><input type="radio" name="bolivar-p2" value="c"> Escribir constituciones europeas</label>
                </div>
                <div class="pregunta"><p>3. ¿Qué designación le dio el Congreso peruano en 1824?</p>
                    <label><input type="radio" name="bolivar-p3" value="a"> Protector Adjunto</label>
                    <label><input type="radio" name="bolivar-p3" value="b"> Dictador del Perú</label>
                    <label><input type="radio" name="bolivar-p3" value="c"> Rey de los Andes</label>
                </div>
                <div class="pregunta"><p>4. ¿A qué corriente pertenecía su fuerza militar?</p>
                    <label><input type="radio" name="bolivar-p4" value="a"> Corriente Libertadora del Sur</label>
                    <label><input type="radio" name="bolivar-p4" value="b"> Corriente Libertadora del Norte</label>
                    <label><input type="radio" name="bolivar-p4" value="c"> Expedición Integradora del Centro</label>
                </div>
                <div class="pregunta"><p>5. ¿Qué batallas de 1824 terminaron con el dominio español?</p>
                    <label><input type="radio" name="bolivar-p5" value="a"> San Juan y Miraflores</label>
                    <label><input type="radio" name="bolivar-p5" value="b"> Junín y Ayacucho</label>
                    <label><input type="radio" name="bolivar-p5" value="c"> Iquique y Angamos</label>
                </div>
                <div class="pregunta"><p>6. ¿Cuál era su proyecto geopolítico?</p>
                    <label><input type="radio" name="bolivar-p6" value="a"> Federación de repúblicas</label>
                    <label><input type="radio" name="bolivar-p6" value="b"> Fraccionamiento en pequeños estados</label>
                    <label><input type="radio" name="bolivar-p6" value="c"> Sometimiento a Inglaterra</label>
                </div>
                <div class="pregunta"><p>7. ¿Qué nación se nombró en homenaje a Bolívar?</p>
                    <label><input type="radio" name="bolivar-p7" value="a"> Ecuador</label>
                    <label><input type="radio" name="bolivar-p7" value="b"> Bolivia</label>
                    <label><input type="radio" name="bolivar-p7" value="c"> Colombia</label>
                </div>
                <div class="pregunta"><p>8. ¿Qué batalla de caballería dirigió en agosto de 1824?</p>
                    <label><input type="radio" name="bolivar-p8" value="a"> Tarapacá</label>
                    <label><input type="radio" name="bolivar-p8" value="b"> Junín</label>
                    <label><input type="radio" name="bolivar-p8" value="c"> Arica</label>
                </div>
                <div class="pregunta"><p>9. ¿Quién fue su general más leal?</p>
                    <label><input type="radio" name="bolivar-p9" value="a"> Antonio José de Sucre</label>
                    <label><input type="radio" name="bolivar-p9" value="b"> Andrés Cáceres</label>
                    <label><input type="radio" name="bolivar-p9" value="c"> Agustín Gamarra</label>
                </div>
                <div class="pregunta"><p>10. ¿Dónde habitó Bolívar en Lima?</p>
                    <label><input type="radio" name="bolivar-p10" value="a"> Quinta de los Libertadores</label>
                    <label><input type="radio" name="bolivar-p10" value="b"> Catacumbas de San Francisco</label>
                    <label><input type="radio" name="bolivar-p10" value="c"> Real Felipe del Callao</label>
                </div>
            </div>
'@ }
    "page7.html" = @{ id='q-bolognesi'; answers="['b','a','a','b','b','b','b','b','a','a']"; questions=@'
            <div class="grid-preguntas">
                <div class="pregunta"><p>1. ¿Cuál fue la respuesta mítica de Bolognesi a la capitulación?</p>
                    <label><input type="radio" name="bolognesi-p1" value="a"> "Si mil vidas tuviera..."</label>
                    <label><input type="radio" name="bolognesi-p1" value="b"> "Tengo deberes sagrados que cumplir..."</label>
                    <label><input type="radio" name="bolognesi-p1" value="c"> "El Huáscar no se rinde..."</label>
                </div>
                <div class="pregunta"><p>2. ¿En qué enfrentamiento resistió?</p>
                    <label><input type="radio" name="bolognesi-p2" value="a"> Batalla de Arica</label>
                    <label><input type="radio" name="bolognesi-p2" value="b"> Batalla de Junín</label>
                    <label><input type="radio" name="bolognesi-p2" value="c"> Batalla de Miraflores</label>
                </div>
                <div class="pregunta"><p>3. ¿Qué fortificación defendía?</p>
                    <label><input type="radio" name="bolognesi-p3" value="a"> El Morro de Arica</label>
                    <label><input type="radio" name="bolognesi-p3" value="b"> Cerro San Cristóbal</label>
                    <label><input type="radio" name="bolognesi-p3" value="c"> Lomas de Lachay</label>
                </div>
                <div class="pregunta"><p>4. ¿Qué mayor chileno pidió la rendición?</p>
                    <label><input type="radio" name="bolognesi-p4" value="a"> Juan de la Cruz Salvo</label>
                    <label><input type="radio" name="bolognesi-p4" value="b"> Arturo Prat</label>
                    <label><input type="radio" name="bolognesi-p4" value="c"> Manuel Baquedano</label>
                </div>
                <div class="pregunta"><p>5. ¿Qué decisión tomada por Bolognesi?</p>
                    <label><input type="radio" name="bolognesi-p5" value="a"> Evacuar de noche</label>
                    <label><input type="radio" name="bolognesi-p5" value="b"> Defender hasta las últimas consecuencias</label>
                    <label><input type="radio" name="bolognesi-p5" value="c"> Solicitar una tregua</label>
                </div>
                <div class="pregunta"><p>6. ¿En qué fecha se libró Arica?</p>
                    <label><input type="radio" name="bolognesi-p6" value="a"> 28 de julio</label>
                    <label><input type="radio" name="bolognesi-p6" value="b"> 7 de junio de 1880</label>
                    <label><input type="radio" name="bolognesi-p6" value="c"> 8 de octubre</label>
                </div>
                <div class="pregunta"><p>7. ¿Cuál era la situación táctica?</p>
                    <label><input type="radio" name="bolognesi-p7" value="a"> Superioridad de armamento</label>
                    <label><input type="radio" name="bolognesi-p7" value="b"> Total inferioridad numérica</label>
                    <label><input type="radio" name="bolognesi-p7" value="c"> Apoyo extranjero</label>
                </div>
                <div class="pregunta"><p>8. ¿Qué edad tenía Bolognesi?</p>
                    <label><input type="radio" name="bolognesi-p8" value="a"> 22 años</label>
                    <label><input type="radio" name="bolognesi-p8" value="b"> Más de 60 años</label>
                    <label><input type="radio" name="bolognesi-p8" value="c"> 35 años</label>
                </div>
                <div class="pregunta"><p>9. ¿Qué rango tenía?</p>
                    <label><input type="radio" name="bolognesi-p9" value="a"> Coronel</label>
                    <label><input type="radio" name="bolognesi-p9" value="b"> Capitán de Fragata</label>
                    <label><input type="radio" name="bolognesi-p9" value="c"> Teniente General</label>
                </div>
                <div class="pregunta"><p>10. ¿Qué virtudes encarna?</p>
                    <label><input type="radio" name="bolognesi-p10" value="a"> Honor, valentía y fidelidad</label>
                    <label><input type="radio" name="bolognesi-p10" value="b"> Conveniencia económica</label>
                    <label><input type="radio" name="bolognesi-p10" value="c"> Retirada estratégica</label>
                </div>
            </div>
'@ }
    "page8.html" = @{ id='q-zapata'; answers="['b','a','b','b','b','b','b','a','a','a']"; questions=@'
            <div class="grid-preguntas">
                <div class="pregunta"><p>1. ¿Quién fue Everardo Zapata Santillana?</p>
                    <label><input type="radio" name="sanmartin-p1" value="a"> Un almirante</label>
                    <label><input type="radio" name="sanmartin-p1" value="b"> Un maestro creador del libro "Coquito"</label>
                    <label><input type="radio" name="sanmartin-p1" value="c"> Un explorador amazónico</label>
                </div>
                <div class="pregunta"><p>2. ¿Cuál es el nombre del texto escolar?</p>
                    <label><input type="radio" name="sanmartin-p2" value="a"> Coquito</label>
                    <label><input type="radio" name="sanmartin-p2" value="b"> Nacho de lectura</label>
                    <label><input type="radio" name="sanmartin-p2" value="c"> Silabario Americano</label>
                </div>
                <div class="pregunta"><p>3. ¿De qué región era originario?</p>
                    <label><input type="radio" name="sanmartin-p3" value="a"> Lima</label>
                    <label><input type="radio" name="sanmartin-p3" value="b"> Arequipa</label>
                    <label><input type="radio" name="sanmartin-p3" value="c"> Loreto</label>
                </div>
                <div class="pregunta"><p>4. ¿En qué año salió la primera edición de Coquito?</p>
                    <label><input type="radio" name="sanmartin-p4" value="a"> 1821</label>
                    <label><input type="radio" name="sanmartin-p4" value="b"> 1955</label>
                    <label><input type="radio" name="sanmartin-p4" value="c"> 2001</label>
                </div>
                <div class="pregunta"><p>5. ¿Qué método educativo usó?</p>
                    <label><input type="radio" name="sanmartin-p5" value="a"> Repetición memorística</label>
                    <label><input type="radio" name="sanmartin-p5" value="b"> Método fonético con imágenes</label>
                    <label><input type="radio" name="sanmartin-p5" value="c"> Aprendizaje de lenguas clásicas</label>
                </div>
                <div class="pregunta"><p>6. ¿A cuántos estudiantes benefició?</p>
                    <label><input type="radio" name="sanmartin-p6" value="a"> Miles</label>
                    <label><input type="radio" name="sanmartin-p6" value="b"> Decenas de millones</label>
                    <label><input type="radio" name="sanmartin-p6" value="c"> Solo rurales</label>
                </div>
                <div class="pregunta"><p>7. ¿A qué regiones se extendió Coquito?</p>
                    <label><input type="radio" name="sanmartin-p7" value="a"> Solo Asia</label>
                    <label><input type="radio" name="sanmartin-p7" value="b"> Países hispanohablantes en América</label>
                    <label><input type="radio" name="sanmartin-p7" value="c"> No salió de su provincia</label>
                </div>
                <div class="pregunta"><p>8. ¿Cuál fue su motivación principal?</p>
                    <label><input type="radio" name="sanmartin-p8" value="a"> Erradicar el analfabetismo con un método sencillo</label>
                    <label><input type="radio" name="sanmartin-p8" value="b"> Ganar un premio monetario</label>
                    <label><input type="radio" name="sanmartin-p8" value="c"> Encargo del Ministerio de Economía</label>
                </div>
                <div class="pregunta"><p>9. ¿Qué distinción recibió del Estado?</p>
                    <label><input type="radio" name="sanmartin-p9" value="a"> Palmas Magisteriales Grado Amauta</label>
                    <label><input type="radio" name="sanmartin-p9" value="b"> Grado de General</label>
                    <label><input type="radio" name="sanmartin-p9" value="c"> Medalla deportiva</label>
                </div>
                <div class="pregunta"><p>10. ¿Por qué es un héroe civil?</p>
                    <label><input type="radio" name="sanmartin-p10" value="a"> Por derrotar el analfabetismo</label>
                    <label><input type="radio" name="sanmartin-p10" value="b"> Por participar en revoluciones armadas</label>
                    <label><input type="radio" name="sanmartin-p10" value="c"> Por inventar imprenta</label>
                </div>
            </div>
'@ }
    "page9.html" = @{ id='q-quinones'; answers="['c','b','a','b','b','a','b','a','a','a']"; questions=@'
            <div class="grid-preguntas">
                <div class="pregunta"><p>1. ¿En qué rama sirvió José Abelardo Quiñones?</p>
                    <label><input type="radio" name="bolivar2-p1" value="a"> Marina de Guerra</label>
                    <label><input type="radio" name="bolivar2-p1" value="b"> Ejército</label>
                    <label><input type="radio" name="bolivar2-p1" value="c"> Fuerza Aérea</label>
                </div>
                <div class="pregunta"><p>2. ¿Qué acrobacia hizo en su graduación?</p>
                    <label><input type="radio" name="bolivar2-p2" value="a"> Planeo sin motores</label>
                    <label><input type="radio" name="bolivar2-p2" value="b"> Volar invertido rozando la pista</label>
                    <label><input type="radio" name="bolivar2-p2" value="c"> Saltar en paracaídas</label>
                </div>
                <div class="pregunta"><p>3. ¿En qué conflicto demostró su valor?</p>
                    <label><input type="radio" name="bolivar2-p3" value="a"> Conflicto Perú-Ecuador de 1941</label>
                    <label><input type="radio" name="bolivar2-p3" value="b"> Guerra del Pacífico</label>
                    <label><input type="radio" name="bolivar2-p3" value="c"> Primera Guerra Mundial</label>
                </div>
                <div class="pregunta"><p>4. ¿Qué avión pilotaba?</p>
                    <label><input type="radio" name="bolivar2-p4" value="a"> Monitor de aire II</label>
                    <label><input type="radio" name="bolivar2-p4" value="b"> North American NA-50 "Torito"</label>
                    <label><input type="radio" name="bolivar2-p4" value="c"> Boeing bomber</label>
                </div>
                <div class="pregunta"><p>5. ¿Qué le pasó en la misión?</p>
                    <label><input type="radio" name="bolivar2-p5" value="a"> Falla de combustible</label>
                    <label><input type="radio" name="bolivar2-p5" value="b"> Impactado por la artillería</label>
                    <label><input type="radio" name="bolivar2-p5" value="c"> Chocó con aves</label>
                </div>
                <div class="pregunta"><p>6. ¿Qué decisión tomó en lugar del paracaídas?</p>
                    <label><input type="radio" name="bolivar2-p6" value="a"> Enrumbar hacia posiciones enemigas</label>
                    <label><input type="radio" name="bolivar2-p6" value="b"> Intentar aterrizaje forzoso</label>
                    <label><input type="radio" name="bolivar2-p6" value="c"> Buscar refugio</label>
                </div>
                <div class="pregunta"><p>7. ¿Qué fecha es el Día de la Fuerza Aérea del Perú?</p>
                    <label><input type="radio" name="bolivar2-p7" value="a"> 7 de junio</label>
                    <label><input type="radio" name="bolivar2-p7" value="b"> 23 de julio</label>
                    <label><input type="radio" name="bolivar2-p7" value="c"> 8 de octubre</label>
                </div>
                <div class="pregunta"><p>8. ¿De qué departamento era originario?</p>
                    <label><input type="radio" name="bolivar2-p8" value="a"> Lambayeque</label>
                    <label><input type="radio" name="bolivar2-p8" value="b"> Tumbes</label>
                    <label><input type="radio" name="bolivar2-p8" value="c"> Piura</label>
                </div>
                <div class="pregunta"><p>9. ¿En qué billete aparece su efigie?</p>
                    <label><input type="radio" name="bolivar2-p9" value="a"> 10 Soles</label>
                    <label><input type="radio" name="bolivar2-p9" value="b"> 100 Soles</label>
                    <label><input type="radio" name="bolivar2-p9" value="c"> 50 Soles</label>
                </div>
                <div class="pregunta"><p>10. ¿Qué significado tiene Quiñones?</p>
                    <label><input type="radio" name="bolivar2-p10" value="a"> Audacia, desprendimiento y sacrificio</label>
                    <label><input type="radio" name="bolivar2-p10" value="b"> Apego al reglamento pasivo</label>
                    <label><input type="radio" name="bolivar2-p10" value="c"> Destreza comercial</label>
                </div>
            </div>
'@ }
    "page10.html" = @{ id='q-castilla'; answers="['b','a','a','c','a','b','a','b','a','a']"; questions=@'
            <div class="grid-preguntas">
                <div class="pregunta"><p>1. ¿En cuántos períodos presidió Ramón Castilla?</p>
                    <label><input type="radio" name="castilla-p1" value="a"> Solo una vez</label>
                    <label><input type="radio" name="castilla-p1" value="b"> Dos períodos</label>
                    <label><input type="radio" name="castilla-p1" value="c"> Ninguna</label>
                </div>
                <div class="pregunta"><p>2. ¿Qué medida social decretó en 1854?</p>
                    <label><input type="radio" name="castilla-p2" value="a"> Abolición de la esclavitud</label>
                    <label><input type="radio" name="castilla-p2" value="b"> Incremento de impuestos</label>
                    <label><input type="radio" name="castilla-p2" value="c"> Traslado de esclavos a la selva</label>
                </div>
                <div class="pregunta"><p>3. ¿Qué impuesto eliminó?</p>
                    <label><input type="radio" name="castilla-p3" value="a"> Tributo indígena</label>
                    <label><input type="radio" name="castilla-p3" value="b"> Impuesto al comercio</label>
                    <label><input type="radio" name="castilla-p3" value="c"> Impuesto a la exportación</label>
                </div>
                <div class="pregunta"><p>4. ¿Qué recurso generó enormes rentas?</p>
                    <label><input type="radio" name="castilla-p4" value="a"> Guano de las islas</label>
                    <label><input type="radio" name="castilla-p4" value="b"> Salitre</label>
                    <label><input type="radio" name="castilla-p4" value="c"> Caucho</label>
                </div>
                <div class="pregunta"><p>5. ¿Qué ferrocarril inauguró?</p>
                    <label><input type="radio" name="castilla-p5" value="a"> Lima - Callao</label>
                    <label><input type="radio" name="castilla-p5" value="b"> Tranvía de Trujillo</label>
                    <label><input type="radio" name="castilla-p5" value="c"> Ferrovía central</label>
                </div>
                <div class="pregunta"><p>6. ¿Qué medio de comunicación introdujo?</p>
                    <label><input type="radio" name="castilla-p6" value="a"> Correo aéreo</label>
                    <label><input type="radio" name="castilla-p6" value="b"> Telégrafo eléctrico</label>
                    <label><input type="radio" name="castilla-p6" value="c"> Mensajería ecuestre</label>
                </div>
                <div class="pregunta"><p>7. ¿Cómo saneó las finanzas?</p>
                    <label><input type="radio" name="castilla-p7" value="a"> Presupuesto nacional y pago de deuda</label>
                    <label><input type="radio" name="castilla-p7" value="b"> Moneda sin valor</label>
                    <label><input type="radio" name="castilla-p7" value="c"> Clausurar aduana</label>
                </div>
                <div class="pregunta"><p>8. ¿Qué iluminación moderna introdujo?</p>
                    <label><input type="radio" name="castilla-p8" value="a"> Alumbrado eléctrico</label>
                    <label><input type="radio" name="castilla-p8" value="b"> Alumbrado público a gas</label>
                    <label><input type="radio" name="castilla-p8" value="c"> Lámparas de aceite</label>
                </div>
                <div class="pregunta"><p>9. ¿Dónde nació Castilla?</p>
                    <label><input type="radio" name="castilla-p9" value="a"> Tarapacá</label>
                    <label><input type="radio" name="castilla-p9" value="b"> Tacna</label>
                    <label><input type="radio" name="castilla-p9" value="c"> Puno</label>
                </div>
                <div class="pregunta"><p>10. ¿Cómo lo consagra la historia?</p>
                    <label><input type="radio" name="castilla-p10" value="a"> Gran Organizador de la República</label>
                    <label><input type="radio" name="castilla-p10" value="b"> Conquistador de desiertos</label>
                    <label><input type="radio" name="castilla-p10" value="c"> Protector del comercio colonial</label>
                </div>
            </div>
'@ }
    "page11.html" = @{ id='q-bastidas'; answers="['b','a','a','b','b','a','b','b','a','a']"; questions=@'
            <div class="grid-preguntas">
                <div class="pregunta"><p>1. ¿Quién fue Micaela Bastidas?</p>
                    <label><input type="radio" name="bastidas-p1" value="a"> Pintora cusqueña</label>
                    <label><input type="radio" name="bastidas-p1" value="b"> Estratega revolucionaria</label>
                    <label><input type="radio" name="bastidas-p1" value="c"> Primera mujer legisladora</label>
                </div>
                <div class="pregunta"><p>2. ¿De qué líder fue esposa?</p>
                    <label><input type="radio" name="bastidas-p2" value="a"> Túpac Amaru II</label>
                    <label><input type="radio" name="bastidas-p2" value="b"> Manco Inca</label>
                    <label><input type="radio" name="bastidas-p2" value="c"> Juan Santos Atahualpa</label>
                </div>
                <div class="pregunta"><p>3. ¿Qué funciones tenía en Tungasuca?</p>
                    <label><input type="radio" name="bastidas-p3" value="a"> Domésticas</label>
                    <label><input type="radio" name="bastidas-p3" value="b"> Abastecimiento y organización</label>
                    <label><input type="radio" name="bastidas-p3" value="c"> Transcribir textos religiosos</label>
                </div>
                <div class="pregunta"><p>4. ¿Qué rasgos la definían?</p>
                    <label><input type="radio" name="bastidas-p4" value="a"> Inteligencia y firmeza</label>
                    <label><input type="radio" name="bastidas-p4" value="b"> Temor constante</label>
                    <label><input type="radio" name="bastidas-p4" value="c"> Desinterés</label>
                </div>
                <div class="pregunta"><p>5. ¿Qué carta estratégica envió?</p>
                    <label><input type="radio" name="bastidas-p5" value="a"> Replegarse a la selva</label>
                    <label><input type="radio" name="bastidas-p5" value="b"> Cercar Cusco antes de refuerzos</label>
                    <label><input type="radio" name="bastidas-p5" value="c"> Buscar paz con la Audiencia</label>
                </div>
                <div class="pregunta"><p>6. ¿Cómo cayó prisionera?</p>
                    <label><input type="radio" name="bastidas-p6" value="a"> Tras traición y derrota</label>
                    <label><input type="radio" name="bastidas-p6" value="b"> Se entregó por dinero</label>
                    <label><input type="radio" name="bastidas-p6" value="c"> Interceptada en la frontera</label>
                </div>
                <div class="pregunta"><p>7. ¿Qué sentencia le impuso Areche?</p>
                    <label><input type="radio" name="bastidas-p7" value="a"> Destierro</label>
                    <label><input type="radio" name="bastidas-p7" value="b"> Garrote y descuartizamiento</label>
                    <label><input type="radio" name="bastidas-p7" value="c"> Confinamiento en convento</label>
                </div>
                <div class="pregunta"><p>8. ¿Quién fue ejecutado ante ella?</p>
                    <label><input type="radio" name="bastidas-p8" value="a"> Hermanos menores</label>
                    <label><input type="radio" name="bastidas-p8" value="b"> Su hijo Hipólito</label>
                    <label><input type="radio" name="bastidas-p8" value="c"> Ninguno</label>
                </div>
                <div class="pregunta"><p>9. ¿Cuál era su origen étnico?</p>
                    <label><input type="radio" name="bastidas-p9" value="a"> Hispano-afroindígena</label>
                    <label><input type="radio" name="bastidas-p9" value="b"> Puremente europeo</label>
                    <label><input type="radio" name="bastidas-p9" value="c"> Criolla limeña</label>
                </div>
                <div class="pregunta"><p>10. ¿Qué representa su figura?</p>
                    <label><input type="radio" name="bastidas-p10" value="a"> Liderazgo femenino y justicia social</label>
                    <label><input type="radio" name="bastidas-p10" value="b"> Nacimiento del arte textil</label>
                    <label><input type="radio" name="bastidas-p10" value="c"> Primera cartógrafa</label>
                </div>
            </div>
'@ }
    "page12.html" = @{ id='q-caceres'; answers="['b','b','b','b','b','a','b','b','a','a']"; questions=@'
            <div class="grid-preguntas">
                <div class="pregunta"><p>1. ¿Qué seudónimo le impusieron a Cáceres?</p>
                    <label><input type="radio" name="caceres-p1" value="a"> Caballero de los Mares</label>
                    <label><input type="radio" name="caceres-p1" value="b"> Brujo de los Andes</label>
                    <label><input type="radio" name="caceres-p1" value="c"> Faraón de la Sierra</label>
                </div>
                <div class="pregunta"><p>2. ¿Dónde organizó su resistencia?</p>
                    <label><input type="radio" name="caceres-p2" value="a"> Costa Norte</label>
                    <label><input type="radio" name="caceres-p2" value="b"> Sierra Central</label>
                    <label><input type="radio" name="caceres-p2" value="c"> Valles de la selva</label>
                </div>
                <div class="pregunta"><p>3. ¿Quién formaba su contingente?</p>
                    <label><input type="radio" name="caceres-p3" value="a"> Mercenarios europeos</label>
                    <label><input type="radio" name="caceres-p3" value="b"> Campesinos e indígenas</label>
                    <label><input type="radio" name="caceres-p3" value="c"> Marineros desembarcados</label>
                </div>
                <div class="pregunta"><p>4. ¿Por qué se le llamó Brujo?</p>
                    <label><input type="radio" name="caceres-p4" value="a"> Hacía magia teatral</label>
                    <label><input type="radio" name="caceres-p4" value="b"> Se movía como desapareciendo en los cerros</label>
                    <label><input type="radio" name="caceres-p4" value="c"> Conocía plantas medicinales</label>
                </div>
                <div class="pregunta"><p>5. ¿Qué engaño táctico usó con llamas?</p>
                    <label><input type="radio" name="caceres-p5" value="a"> Soltarlas cuesta abajo</label>
                    <label><input type="radio" name="caceres-p5" value="b"> Simular un ejército grande</label>
                    <label><input type="radio" name="caceres-p5" value="c"> Jalar cañones</label>
                </div>
                <div class="pregunta"><p>6. ¿Qué idioma hablaba con sus soldados?</p>
                    <label><input type="radio" name="caceres-p6" value="a"> Quechua ayacuchano</label>
                    <label><input type="radio" name="caceres-p6" value="b"> Aimara</label>
                    <label><input type="radio" name="caceres-p6" value="c"> Mochica</label>
                </div>
                <div class="pregunta"><p>7. ¿Qué batalla ganó en julio de 1882?</p>
                    <label><input type="radio" name="caceres-p7" value="a"> San Juan y Chorrillos</label>
                    <label><input type="radio" name="caceres-p7" value="b"> Marcavalle y Pucará</label>
                    <label><input type="radio" name="caceres-p7" value="c"> Asalto al Morro de Arica</label>
                </div>
                <div class="pregunta"><p>8. ¿Qué cargo político ejerció luego?</p>
                    <label><input type="radio" name="caceres-p8" value="a"> Alcalde de Lima</label>
                    <label><input type="radio" name="caceres-p8" value="b"> Presidente de la República</label>
                    <label><input type="radio" name="caceres-p8" value="c"> Presidente del Poder Judicial</label>
                </div>
                <div class="pregunta"><p>9. ¿De qué departamento era?</p>
                    <label><input type="radio" name="caceres-p9" value="a"> Ayacucho</label>
                    <label><input type="radio" name="caceres-p9" value="b"> Junín</label>
                    <label><input type="radio" name="caceres-p9" value="c"> Pasco</label>
                </div>
                <div class="pregunta"><p>10. ¿Qué enseñanza deja?</p>
                    <label><input type="radio" name="caceres-p10" value="a"> Resistir sin rendirse</label>
                    <label><input type="radio" name="caceres-p10" value="b"> Rendirse rápidamente</label>
                    <label><input type="radio" name="caceres-p10" value="c"> Imposible sin armamento moderno</label>
                </div>
            </div>
'@ }
    "page13.html" = @{ id='q-ugarte'; answers="['b','a','b','b','a','a','a','b','a','a']"; questions=@'
            <div class="grid-preguntas">
                <div class="pregunta"><p>1. ¿Qué cargo tenía Alfonso Ugarte en la Batalla de Arica?</p>
                    <label><input type="radio" name="ugarte-p1" value="a"> Comandante General</label>
                    <label><input type="radio" name="ugarte-p1" value="b"> Coronel</label>
                    <label><input type="radio" name="ugarte-p1" value="c"> Subteniente médico</label>
                </div>
                <div class="pregunta"><p>2. ¿A qué actividad se dedicaba antes de la guerra?</p>
                    <label><input type="radio" name="ugarte-p2" value="a"> Empresario salitrero</label>
                    <label><input type="radio" name="ugarte-p2" value="b"> Pescador</label>
                    <label><input type="radio" name="ugarte-p2" value="c"> Funcionario aduanero</label>
                </div>
                <div class="pregunta"><p>3. ¿Qué hizo con su fortuna al iniciar la guerra?</p>
                    <label><input type="radio" name="ugarte-p3" value="a"> Financió un batallón</label>
                    <label><input type="radio" name="ugarte-p3" value="b"> Viajó a Europa</label>
                    <label><input type="radio" name="ugarte-p3" value="c"> Compró tierras</label>
                </div>
                <div class="pregunta"><p>4. ¿Qué acto heroico consumó al caer rodeado?</p>
                    <label><input type="radio" name="ugarte-p4" value="a"> Entregó su espada</label>
                    <label><input type="radio" name="ugarte-p4" value="b"> Saltó al mar con la bandera</label>
                    <label><input type="radio" name="ugarte-p4" value="c"> Se ocultó</label>
                </div>
                <div class="pregunta"><p>5. ¿Qué símbolo rescató con su sacrificio?</p>
                    <label><input type="radio" name="ugarte-p5" value="a"> Escudo</label>
                    <label><input type="radio" name="ugarte-p5" value="b"> Bandera</label>
                    <label><input type="radio" name="ugarte-p5" value="c"> Libro de Oro</label>
                </div>
                <div class="pregunta"><p>6. ¿Cómo murió?</p>
                    <label><input type="radio" name="ugarte-p6" value="a"> En combate</label>
                    <label><input type="radio" name="ugarte-p6" value="b"> En exilio</label>
                    <label><input type="radio" name="ugarte-p6" value="c"> En prisión</label>
                </div>
                <div class="pregunta"><p>7. ¿Qué opción rechazó?</p>
                    <label><input type="radio" name="ugarte-p7" value="a"> Destierro voluntario</label>
                    <label><input type="radio" name="ugarte-p7" value="b"> Comodidad y capitulación</label>
                    <label><input type="radio" name="ugarte-p7" value="c"> Cambiar de nacionalidad</label>
                </div>
                <div class="pregunta"><p>8. ¿Qué fecha conmemora su memoria?</p>
                    <label><input type="radio" name="ugarte-p8" value="a"> 7 de junio</label>
                    <label><input type="radio" name="ugarte-p8" value="b"> 28 de julio</label>
                    <label><input type="radio" name="ugarte-p8" value="c"> 8 de octubre</label>
                </div>
                <div class="pregunta"><p>9. ¿Cuál es su mensaje?</p>
                    <label><input type="radio" name="ugarte-p9" value="a"> Sacrificio por la patria</label>
                    <label><input type="radio" name="ugarte-p9" value="b"> Política</label>
                    <label><input type="radio" name="ugarte-p9" value="c"> Diplomacia</label>
                </div>
                <div class="pregunta"><p>10. ¿Qué evento conmemora su acto?</p>
                    <label><input type="radio" name="ugarte-p10" value="a"> Combate del 2 de Mayo</label>
                    <label><input type="radio" name="ugarte-p10" value="b"> Angamos</label>
                    <label><input type="radio" name="ugarte-p10" value="c"> Junín</label>
                </div>
            </div>
'@ }
    "page14.html" = @{ id='q-2demayo'; answers="['b','b','c','a','b','b','b','a','b','b']"; questions=@'
            <div class="grid-preguntas">
                <div class="pregunta"><p>1. ¿En qué año se libró el Combate del 2 de Mayo?</p>
                    <label><input type="radio" name="2demayo-p1" value="a"> 1821</label>
                    <label><input type="radio" name="2demayo-p1" value="b"> 1866</label>
                    <label><input type="radio" name="2demayo-p1" value="c"> 1879</label>
                </div>
                <div class="pregunta"><p>2. ¿Qué fuerza bombardeó el Callao?</p>
                    <label><input type="radio" name="2demayo-p2" value="a"> Escuadra Civil Francesa</label>
                    <label><input type="radio" name="2demayo-p2" value="b"> Escuadra Real Española</label>
                    <label><input type="radio" name="2demayo-p2" value="c"> Armada de Estados Unidos</label>
                </div>
                <div class="pregunta"><p>3. ¿Qué puerto se fortificó?</p>
                    <label><input type="radio" name="2demayo-p3" value="a"> Puerto de Paita</label>
                    <label><input type="radio" name="2demayo-p3" value="b"> Callao</label>
                    <label><input type="radio" name="2demayo-p3" value="c"> Puerto de Matarani</label>
                </div>
                <div class="pregunta"><p>4. ¿Quién fue el Ministro de Guerra y Marina?</p>
                    <label><input type="radio" name="2demayo-p4" value="a"> José Gálvez Egúsquiza</label>
                    <label><input type="radio" name="2demayo-p4" value="b"> Ramón Castilla</label>
                    <label><input type="radio" name="2demayo-p4" value="c"> Miguel Grau</label>
                </div>
                <div class="pregunta"><p>5. ¿Qué ocurrió en la Torre de la Merced?</p>
                    <label><input type="radio" name="2demayo-p5" value="a"> Polvorín humedecido</label>
                    <label><input type="radio" name="2demayo-p5" value="b"> Explosión que mató a José Gálvez</label>
                    <label><input type="radio" name="2demayo-p5" value="c"> Retiro de las fuerzas</label>
                </div>
                <div class="pregunta"><p>6. ¿Qué hicieron civiles y bomberos?</p>
                    <label><input type="radio" name="2demayo-p6" value="a"> Abandonaron el puerto</label>
                    <label><input type="radio" name="2demayo-p6" value="b"> Socorrieron heridos y recargaron cañones</label>
                    <label><input type="radio" name="2demayo-p6" value="c"> Se manifestaron contra el gobierno</label>
                </div>
                <div class="pregunta"><p>7. ¿Cuál fue el resultado militar definitivo?</p>
                    <label><input type="radio" name="2demayo-p7" value="a"> Tomaron la capital</label>
                    <label><input type="radio" name="2demayo-p7" value="b"> Fueron dañados y se retiraron</label>
                    <label><input type="radio" name="2demayo-p7" value="c"> Firmaron un contrato comercial</label>
                </div>
                <div class="pregunta"><p>8. ¿Qué fecha se conmemora?</p>
                    <label><input type="radio" name="2demayo-p8" value="a"> 2 de mayo</label>
                    <label><input type="radio" name="2demayo-p8" value="b"> 9 de octubre</label>
                    <label><input type="radio" name="2demayo-p8" value="c"> 7 de junio</label>
                </div>
                <div class="pregunta"><p>9. ¿Qué cañón histórico se recuerda?</p>
                    <label><input type="radio" name="2demayo-p9" value="a"> El Destructor</label>
                    <label><input type="radio" name="2demayo-p9" value="b"> El Pueblo</label>
                    <label><input type="radio" name="2demayo-p9" value="c"> El Huáscar terrestre</label>
                </div>
                <div class="pregunta"><p>10. ¿Qué monumento recuerda esta gesta?</p>
                    <label><input type="radio" name="2demayo-p10" value="a"> Monumento a los Héroes de la Selva</label>
                    <label><input type="radio" name="2demayo-p10" value="b"> Monumento al Dos de Mayo</label>
                    <label><input type="radio" name="2demayo-p10" value="c"> Obelisco de los Conquistadores</label>
                </div>
            </div>
'@ }
    "page15.html" = @{ id='q-indep2'; answers="['b','a','b','a','b','a','b','a','a','b']"; questions=@'
            <div class="grid-preguntas">
                <div class="pregunta"><p>1. ¿Qué celebramos el 28 de julio?</p>
                    <label><input type="radio" name="indep2-p1" value="a"> Batalla de Junín</label>
                    <label><input type="radio" name="indep2-p1" value="b"> Proclamación de la Independencia</label>
                    <label><input type="radio" name="indep2-p1" value="c"> Primera constitución</label>
                </div>
                <div class="pregunta"><p>2. ¿Quién proclamó la libertad en Lima?</p>
                    <label><input type="radio" name="indep2-p2" value="a"> San Martín</label>
                    <label><input type="radio" name="indep2-p2" value="b"> Bolívar</label>
                    <label><input type="radio" name="indep2-p2" value="c"> Sucre</label>
                </div>
                <div class="pregunta"><p>3. ¿Qué documento se firmó el 15 de julio de 1821?</p>
                    <label><input type="radio" name="indep2-p3" value="a"> Tratado de Paz</label>
                    <label><input type="radio" name="indep2-p3" value="b"> Acta de la Independencia</label>
                    <label><input type="radio" name="indep2-p3" value="c"> Estatuto de Comercio</label>
                </div>
                <div class="pregunta"><p>4. ¿Dónde desembarcó la Expedición Libertadora de 1820?</p>
                    <label><input type="radio" name="indep2-p4" value="a"> Paracas</label>
                    <label><input type="radio" name="indep2-p4" value="b"> Ancón</label>
                    <label><input type="radio" name="indep2-p4" value="c"> Callao</label>
                </div>
                <div class="pregunta"><p>5. ¿Quién era el último virrey antes de Lima libre?</p>
                    <label><input type="radio" name="indep2-p5" value="a"> José de la Serna</label>
                    <label><input type="radio" name="indep2-p5" value="b"> Joaquín de la Pezuela</label>
                    <label><input type="radio" name="indep2-p5" value="c"> Francisco de Toledo</label>
                </div>
                <div class="pregunta"><p>6. ¿Por qué era clave el Perú para América?</p>
                    <label><input type="radio" name="indep2-p6" value="a"> Porque concentraba el poder realista</label>
                    <label><input type="radio" name="indep2-p6" value="b"> Por sus riquezas agrícolas</label>
                    <label><input type="radio" name="indep2-p6" value="c"> Por un acuerdo con Gran Bretaña</label>
                </div>
                <div class="pregunta"><p>7. ¿Qué sectores apoyaron la independencia?</p>
                    <label><input type="radio" name="indep2-p7" value="a"> Solo extranjeros</label>
                    <label><input type="radio" name="indep2-p7" value="b"> Indígenas, mestizos, negros y criollos</label>
                    <label><input type="radio" name="indep2-p7" value="c"> Solo nobleza limeña</label>
                </div>
                <div class="pregunta"><p>8. ¿Qué intendencia proclamó su independencia en 1820?</p>
                    <label><input type="radio" name="indep2-p8" value="a"> Trujillo</label>
                    <label><input type="radio" name="indep2-p8" value="b"> Arequipa</label>
                    <label><input type="radio" name="indep2-p8" value="c"> Moquegua</label>
                </div>
                <div class="pregunta"><p>9. ¿Qué colores estableció San Martín para la bandera?</p>
                    <label><input type="radio" name="indep2-p9" value="a"> Rojo y blanco</label>
                    <label><input type="radio" name="indep2-p9" value="b"> Azul, blanco y rojo</label>
                    <label><input type="radio" name="indep2-p9" value="c"> Rojo, amarillo y verde</label>
                </div>
                <div class="pregunta"><p>10. ¿Qué tarea quedó pendiente tras 1821?</p>
                    <label><input type="radio" name="indep2-p10" value="a"> Expedición a Europa</label>
                    <label><input type="radio" name="indep2-p10" value="b"> Desalojar al ejército realista</label>
                    <label><input type="radio" name="indep2-p10" value="c"> Cambiar la moneda</label>
                </div>
            </div>
'@ }
    "page16.html" = @{ id='q-junin'; answers="['b','b','b','a','a','a','a','b','a','b']"; questions=@'
            <div class="grid-preguntas">
                <div class="pregunta"><p>1. ¿En qué año se libró Junín?</p>
                    <label><input type="radio" name="junin-p1" value="a"> 1821</label>
                    <label><input type="radio" name="junin-p1" value="b"> 1824</label>
                    <label><input type="radio" name="junin-p1" value="c"> 1824</label>
                </div>
                <div class="pregunta"><p>2. ¿A qué altitud chocaron los ejércitos?</p>
                    <label><input type="radio" name="junin-p2" value="a"> 100 metros</label>
                    <label><input type="radio" name="junin-p2" value="b"> Más de 4,000 metros</label>
                    <label><input type="radio" name="junin-p2" value="c"> Valles tropicales</label>
                </div>
                <div class="pregunta"><p>3. ¿Por qué se llama Batalla de las Armas Blancas?</p>
                    <label><input type="radio" name="junin-p3" value="a"> Uniformes blancos</label>
                    <label><input type="radio" name="junin-p3" value="b"> Lucharon con sables y bayonetas sin disparos</label>
                    <label><input type="radio" name="junin-p3" value="c"> Nevó durante la batalla</label>
                </div>
                <div class="pregunta"><p>4. ¿Qué general español comandaba la caballería?</p>
                    <label><input type="radio" name="junin-p4" value="a"> José de Canterac</label>
                    <label><input type="radio" name="junin-p4" value="b"> Jerónimo Valdés</label>
                    <label><input type="radio" name="junin-p4" value="c"> Rodil</label>
                </div>
                <div class="pregunta"><p>5. ¿Qué escuadrón cambió la batalla?</p>
                    <label><input type="radio" name="junin-p5" value="a"> Húsares de Junín</label>
                    <label><input type="radio" name="junin-p5" value="b"> Dragones del Norte</label>
                    <label><input type="radio" name="junin-p5" value="c"> Invencibles de Pasco</label>
                </div>
                <div class="pregunta"><p>6. ¿Quién cambió la orden de retirada?</p>
                    <label><input type="radio" name="junin-p6" value="a"> José Andrés Rázuri</label>
                    <label><input type="radio" name="junin-p6" value="b"> San Martín</label>
                    <label><input type="radio" name="junin-p6" value="c"> Ramón Castilla</label>
                </div>
                <div class="pregunta"><p>7. ¿Quién mandaba el Ejército Unido?</p>
                    <label><input type="radio" name="junin-p7" value="a"> Bolívar</label>
                    <label><input type="radio" name="junin-p7" value="b"> Sucre</label>
                    <label><input type="radio" name="junin-p7" value="c"> San Martín</label>
                </div>
                <div class="pregunta"><p>8. ¿Cuál fue el impacto?</p>
                    <label><input type="radio" name="junin-p8" value="a"> Sin importancia</label>
                    <label><input type="radio" name="junin-p8" value="b"> Elevó la moral patriota</label>
                    <label><input type="radio" name="junin-p8" value="c"> Obligó a replegarse</label>
                </div>
                <div class="pregunta"><p>9. ¿Qué nombre le dio Bolívar al regimiento?</p>
                    <label><input type="radio" name="junin-p9" value="a"> Húsares de Junín</label>
                    <label><input type="radio" name="junin-p9" value="b"> Lanceros de los Andes</label>
                    <label><input type="radio" name="junin-p9" value="c"> Invencibles de la Sierra</label>
                </div>
                <div class="pregunta"><p>10. ¿Qué monumento se levanta hoy?</p>
                    <label><input type="radio" name="junin-p10" value="a"> Anfiteatro</label>
                    <label><input type="radio" name="junin-p10" value="b"> Obelisco de Chacamarca</label>
                    <label><input type="radio" name="junin-p10" value="c"> Réplica de la casa de Bolívar</label>
                </div>
            </div>
'@ }
    "page17.html" = @{ id='q-himno1'; answers="['b','a','b','b','b','b','b','b','a','b']"; questions=@'
            <div class="grid-preguntas">
                <div class="pregunta"><p>1. ¿Quién compuso las notas del Himno Nacional?</p>
                    <label><input type="radio" name="himno1-p1" value="a"> José de la Torre Ugarte</label>
                    <label><input type="radio" name="himno1-p1" value="b"> José Bernardo Alcedo</label>
                    <label><input type="radio" name="himno1-p1" value="c"> Claudio Rebagliati</label>
                </div>
                <div class="pregunta"><p>2. ¿Quién escribió la letra original?</p>
                    <label><input type="radio" name="himno1-p2" value="a"> José de la Torre Ugarte</label>
                    <label><input type="radio" name="himno1-p2" value="b"> Ricardo Palma</label>
                    <label><input type="radio" name="himno1-p2" value="c"> Abraham Valdelomar</label>
                </div>
                <div class="pregunta"><p>3. ¿Quién cantó por primera vez el himno en 1821?</p>
                    <label><input type="radio" name="himno1-p3" value="a"> Rosa Merino</label>
                    <label><input type="radio" name="himno1-p3" value="b"> Clorinda Matto</label>
                    <label><input type="radio" name="himno1-p3" value="c"> Micaela Villegas</label>
                </div>
                <div class="pregunta"><p>4. ¿Cómo se eligió el himno?</p>
                    <label><input type="radio" name="himno1-p4" value="a"> Decreto real</label>
                    <label><input type="radio" name="himno1-p4" value="b"> Concurso público convocado por San Martín</label>
                    <label><input type="radio" name="himno1-p4" value="c"> Votación popular</label>
                </div>
                <div class="pregunta"><p>5. ¿Dónde se estrenó?</p>
                    <label><input type="radio" name="himno1-p5" value="a"> Iglesia Catedral</label>
                    <label><input type="radio" name="himno1-p5" value="b"> Teatro Principal</label>
                    <label><input type="radio" name="himno1-p5" value="c"> Patio de San Marcos</label>
                </div>
                <div class="pregunta"><p>6. ¿Qué coro abre el himno?</p>
                    <label><input type="radio" name="himno1-p6" value="a"> "Somos libres..."</label>
                    <label><input type="radio" name="himno1-p6" value="b"> "Largo tiempo..."</label>
                    <label><input type="radio" name="himno1-p6" value="c"> "En su cima..."</label>
                </div>
                <div class="pregunta"><p>7. ¿Qué transmite el himno?</p>
                    <label><input type="radio" name="himno1-p7" value="a"> Deseo de dominación</label>
                    <label><input type="radio" name="himno1-p7" value="b"> Amor a la libertad y justicia</label>
                    <label><input type="radio" name="himno1-p7" value="c"> Nostalgia colonial</label>
                </div>
                <div class="pregunta"><p>8. ¿Cuántas estrofas oficiales tiene?</p>
                    <label><input type="radio" name="himno1-p8" value="a"> Cuatro</label>
                    <label><input type="radio" name="himno1-p8" value="b"> Siete</label>
                    <label><input type="radio" name="himno1-p8" value="c"> Diez</label>
                </div>
                <div class="pregunta"><p>9. ¿Cuándo se entonó por primera vez oficialmente?</p>
                    <label><input type="radio" name="himno1-p9" value="a"> 28 de julio</label>
                    <label><input type="radio" name="himno1-p9" value="b"> 23 de septiembre</label>
                    <label><input type="radio" name="himno1-p9" value="c"> 9 de diciembre</label>
                </div>
                <div class="pregunta"><p>10. ¿Cómo es considerado jurídicamente?</p>
                    <label><input type="radio" name="himno1-p10" value="a"> Obra opcional</label>
                    <label><input type="radio" name="himno1-p10" value="b"> Símbolo patrio oficial</label>
                    <label><input type="radio" name="himno1-p10" value="c"> Himno de Lima</label>
                </div>
            </div>
'@ }
    "page18.html" = @{ id='q-himno2'; answers="['a','b','b','a','b','b','b','a','b','b']"; questions=@'
            <div class="grid-preguntas">
                <div class="pregunta"><p>1. ¿Qué estrofa fue declarada apócrifa?</p>
                    <label><input type="radio" name="himno2-p1" value="a"> "Largo tiempo el peruano oprimido..."</label>
                    <label><input type="radio" name="himno2-p1" value="b"> Estrofa de los Andes</label>
                    <label><input type="radio" name="himno2-p1" value="c"> Coro principal</label>
                </div>
                <div class="pregunta"><p>2. ¿Qué decidió el Ministerio de Educación?</p>
                    <label><input type="radio" name="himno2-p2" value="a"> Sustituir por instrumental</label>
                    <label><input type="radio" name="himno2-p2" value="b"> Entonar la sexta estrofa oficial</label>
                    <label><input type="radio" name="himno2-p2" value="c"> Traducir a otro idioma</label>
                </div>
                <div class="pregunta"><p>3. ¿Qué mensaje expresa la sexta estrofa?</p>
                    <label><input type="radio" name="himno2-p3" value="a"> Riquezas mineras</label>
                    <label><input type="radio" name="himno2-p3" value="b"> Andes sostienen la bandera</label>
                    <label><input type="radio" name="himno2-p3" value="c"> Tristeza por pérdidas</label>
                </div>
                <div class="pregunta"><p>4. ¿Quién restauró la partitura en 1869?</p>
                    <label><input type="radio" name="himno2-p4" value="a"> Claudio Rebagliati</label>
                    <label><input type="radio" name="himno2-p4" value="b"> Daniel Alomía Robles</label>
                    <label><input type="radio" name="himno2-p4" value="c"> Juan Diego Flórez</label>
                </div>
                <div class="pregunta"><p>5. ¿Qué ley declaró intangibles letra y música?</p>
                    <label><input type="radio" name="himno2-p5" value="a"> Resolución de Castilla</label>
                    <label><input type="radio" name="himno2-p5" value="b"> Ley N° 1801</label>
                    <label><input type="radio" name="himno2-p5" value="c"> Decreto ley 2015</label>
                </div>
                <div class="pregunta"><p>6. ¿Qué conducta se exige al entonar el himno?</p>
                    <label><input type="radio" name="himno2-p6" value="a"> Permanecer sentados</label>
                    <label><input type="radio" name="himno2-p6" value="b"> Ponerse de pie firmes</label>
                    <label><input type="radio" name="himno2-p6" value="c"> Aplaudir ruidosamente</label>
                </div>
                <div class="pregunta"><p>7. ¿Qué significa apócrifa?</p>
                    <label><input type="radio" name="himno2-p7" value="a"> Origen sagrado</label>
                    <label><input type="radio" name="himno2-p7" value="b"> Duda de autenticidad</label>
                    <label><input type="radio" name="himno2-p7" value="c"> Escrita en quechua</label>
                </div>
                <div class="pregunta"><p>8. ¿Qué institución vela por los símbolos patrios?</p>
                    <label><input type="radio" name="himno2-p8" value="a"> Ministerio de Educación</label>
                    <label><input type="radio" name="himno2-p8" value="b"> Banco Central</label>
                    <label><input type="radio" name="himno2-p8" value="c"> Ministerio de Comercio</label>
                </div>
                <div class="pregunta"><p>9. ¿Qué valor implica el verso "Seámoslo siempre"?</p>
                    <label><input type="radio" name="himno2-p9" value="a"> Búsqueda de riquezas</label>
                    <label><input type="radio" name="himno2-p9" value="b"> Defender la libertad y soberanía</label>
                    <label><input type="radio" name="himno2-p9" value="c"> Mantener fronteras cerradas</label>
                </div>
                <div class="pregunta"><p>10. ¿Cuál es la función social del himno?</p>
                    <label><input type="radio" name="himno2-p10" value="a"> Protocolo aburrido</label>
                    <label><input type="radio" name="himno2-p10" value="b"> Fortalecer identidad nacional</label>
                    <label><input type="radio" name="himno2-p10" value="c"> Promover competencia comercial</label>
                </div>
            </div>
'@ }
    "page19.html" = @{ id='q-angamos'; answers="['b','a','a','b','b','b','b','b','b','a']"; questions=@'
            <div class="grid-preguntas">
                <div class="pregunta"><p>1. ¿Qué fecha conmemora el Combate de Angamos?</p>
                    <label><input type="radio" name="angamos-p1" value="a"> 7 de junio</label>
                    <label><input type="radio" name="angamos-p1" value="b"> 8 de octubre de 1879</label>
                    <label><input type="radio" name="angamos-p1" value="c"> 9 de diciembre</label>
                </div>
                <div class="pregunta"><p>2. ¿Dónde fue el combate?</p>
                    <label><input type="radio" name="angamos-p2" value="a"> Cabo de Angamos</label>
                    <label><input type="radio" name="angamos-p2" value="b"> Punta de Callao</label>
                    <label><input type="radio" name="angamos-p2" value="c"> Bahía de Paracas</label>
                </div>
                <div class="pregunta"><p>3. ¿Quién era el héroe del Huáscar?</p>
                    <label><input type="radio" name="angamos-p3" value="a"> Miguel Grau</label>
                    <label><input type="radio" name="angamos-p3" value="b"> Francisco Bolognesi</label>
                    <label><input type="radio" name="angamos-p3" value="c"> Alfonso Ugarte</label>
                </div>
                <div class="pregunta"><p>4. ¿Qué campaña precedió al combate?</p>
                    <label><input type="radio" name="angamos-p4" value="a"> Expedición del Norte</label>
                    <label><input type="radio" name="angamos-p4" value="b"> Correrías del Huáscar</label>
                    <label><input type="radio" name="angamos-p4" value="c"> Bloqueo del Callao</label>
                </div>
                <div class="pregunta"><p>5. ¿Qué ocurrió en el Huáscar?</p>
                    <label><input type="radio" name="angamos-p5" value="a"> Se hundió completamente</label>
                    <label><input type="radio" name="angamos-p5" value="b"> Fue capturado</label>
                    <label><input type="radio" name="angamos-p5" value="c"> Fue desmantelado</label>
                </div>
                <div class="pregunta"><p>6. ¿Quiénes asumieron el mando luego?</p>
                    <label><input type="radio" name="angamos-p6" value="a"> Oficiales extranjeros</label>
                    <label><input type="radio" name="angamos-p6" value="b"> Elías Aguirre, Melitón Carvajal y Diego Ferré</label>
                    <label><input type="radio" name="angamos-p6" value="c"> Ninguno</label>
                </div>
                <div class="pregunta"><p>7. ¿Qué orden dieron para evitar captura?</p>
                    <label><input type="radio" name="angamos-p7" value="a"> Virar y encallar</label>
                    <label><input type="radio" name="angamos-p7" value="b"> Abrir las válvulas del fondo</label>
                    <label><input type="radio" name="angamos-p7" value="c"> Rendir la nave</label>
                </div>
                <div class="pregunta"><p>8. ¿Por qué era superior el enemigo?</p>
                    <label><input type="radio" name="angamos-p8" value="a"> Naves de madera</label>
                    <label><input type="radio" name="angamos-p8" value="b"> Fragatas blindadas modernas</label>
                    <label><input type="radio" name="angamos-p8" value="c"> Motores solares</label>
                </div>
                <div class="pregunta"><p>9. ¿Qué destino tuvo el Huáscar?</p>
                    <label><input type="radio" name="angamos-p9" value="a"> Hundido en el mar</label>
                    <label><input type="radio" name="angamos-p9" value="b"> Capturado intacto</label>
                    <label><input type="radio" name="angamos-p9" value="c"> Vendido como chatarra</label>
                </div>
                <div class="pregunta"><p>10. ¿Por qué es hermosa su inmolación?</p>
                    <label><input type="radio" name="angamos-p10" value="a"> Honor por encima de la inferioridad material</label>
                    <label><input type="radio" name="angamos-p10" value="b"> Destrucción de la flota rival</label>
                    <label><input type="radio" name="angamos-p10" value="c"> Armisticio comercial</label>
                </div>
            </div>
'@ }
    "page20.html" = @{ id='q-ayacucho'; answers="['b','a','a','a','a','b','a','a','b','a']"; questions=@'
            <div class="grid-preguntas">
                <div class="pregunta"><p>1. ¿En qué fecha se libró la Batalla de Ayacucho?</p>
                    <label><input type="radio" name="ayacucho-p1" value="a"> 28 de julio de 1821</label>
                    <label><input type="radio" name="ayacucho-p1" value="b"> 6 de agosto de 1824</label>
                    <label><input type="radio" name="ayacucho-p1" value="c"> 9 de diciembre de 1824</label>
                </div>
                <div class="pregunta"><p>2. ¿Dónde se desplegaron los ejércitos?</p>
                    <label><input type="radio" name="ayacucho-p2" value="a"> Pampa de la Quinua</label>
                    <label><input type="radio" name="ayacucho-p2" value="b"> Cañón del Colca</label>
                    <label><input type="radio" name="ayacucho-p2" value="c"> Valle del Mantaro</label>
                </div>
                <div class="pregunta"><p>3. ¿Quién mandó el Ejército Unido Libertador?</p>
                    <label><input type="radio" name="ayacucho-p3" value="a"> Antonio José de Sucre</label>
                    <label><input type="radio" name="ayacucho-p3" value="b"> José de San Martín</label>
                    <label><input type="radio" name="ayacucho-p3" value="c"> Simón Bolívar</label>
                </div>
                <div class="pregunta"><p>4. ¿Quién era el general realista prisionero?</p>
                    <label><input type="radio" name="ayacucho-p4" value="a"> José de la Serna</label>
                    <label><input type="radio" name="ayacucho-p4" value="b"> José de Canterac</label>
                    <label><input type="radio" name="ayacucho-p4" value="c"> Rodil</label>
                </div>
                <div class="pregunta"><p>5. ¿Qué documento se firmó en el campo batalla?</p>
                    <label><input type="radio" name="ayacucho-p5" value="a"> Tratado de Ancón</label>
                    <label><input type="radio" name="ayacucho-p5" value="b"> Capitulación de Ayacucho</label>
                    <label><input type="radio" name="ayacucho-p5" value="c"> Acta de Libre Comercio</label>
                </div>
                <div class="pregunta"><p>6. ¿Qué beneficios recibió el ejército español?</p>
                    <label><input type="radio" name="ayacucho-p6" value="a"> Prisión perpetua</label>
                    <label><input type="radio" name="ayacucho-p6" value="b"> Retorno con respeto y pago de pasajes</label>
                    <label><input type="radio" name="ayacucho-p6" value="c"> Integrarse al ejército peruano</label>
                </div>
                <div class="pregunta"><p>7. ¿Qué arenga pronunció Sucre?</p>
                    <label><input type="radio" name="ayacucho-p7" value="a"> "De los esfuerzos de hoy depende la suerte..."</label>
                    <label><input type="radio" name="ayacucho-p7" value="b"> "Tengo deberes sagrados..."</label>
                    <label><input type="radio" name="ayacucho-p7" value="c"> "Viva el Rey y la patria independiente!"</label>
                </div>
                <div class="pregunta"><p>8. ¿Qué tropas integraban el ejército?</p>
                    <label><input type="radio" name="ayacucho-p8" value="a"> Peruanos, colombianos, venezolanos, ecuatorianos, argentinos y chilenos</label>
                    <label><input type="radio" name="ayacucho-p8" value="b"> Tropas de Asia y África</label>
                    <label><input type="radio" name="ayacucho-p8" value="c"> Solo voluntarios limeños</label>
                </div>
                <div class="pregunta"><p>9. ¿Qué estructura conmemora Ayacucho?</p>
                    <label><input type="radio" name="ayacucho-p9" value="a"> Réplica de un templo inca</label>
                    <label><input type="radio" name="ayacucho-p9" value="b"> Obelisco de la Pampa de Ayacucho</label>
                    <label><input type="radio" name="ayacucho-p9" value="c"> Estatua ecuestre</label>
                </div>
                <div class="pregunta"><p>10. ¿Por qué tiene trascendencia mundial?</p>
                    <label><input type="radio" name="ayacucho-p10" value="a"> Derrumbe del imperio español en Sudamérica</label>
                    <label><input type="radio" name="ayacucho-p10" value="b"> Inicio de la explotación del guano</label>
                    <label><input type="radio" name="ayacucho-p10" value="c"> Primera batalla por telégrafo</label>
                </div>
            </div>
'@ }
}

foreach ($entry in $updates.GetEnumerator()) {
    $file = Join-Path (Get-Location) $entry.Key
    if (-not (Test-Path $file)) { Write-Host "File not found: $file"; continue }

    $content = Get-Content -Path $file -Raw
    $match = [regex]::Match($content, '(?s)<div class="grid-preguntas">.*?</div>\s*</div>')
    if (-not $match.Success) {
        Write-Host "No question block found in $file"
        continue
    }

    $newContent = $content.Substring(0, $match.Index) + $entry.Value.questions + $content.Substring($match.Index + $match.Length)
    $id = $entry.Value.id
    $pattern = "onclick=`"validarTrivia\('$id',\s*\[[^\]]*\]\)`""
    $replacement = "onclick=`"validarTrivia('$id', $($entry.Value.answers))`""
    $newContent = [regex]::Replace($newContent, $pattern, $replacement, [System.Text.RegularExpressions.RegexOptions]::Singleline)
    Set-Content -Path $file -Value $newContent -Encoding UTF8
    Write-Host "Updated $($entry.Key)"
}
