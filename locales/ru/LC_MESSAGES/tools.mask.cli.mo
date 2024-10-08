��          �      ,      �  +  �  E   �    �  �   �  7   �  i   �    ^  �  c  o  $  �   �  �   S  �  �  =   �     �     �     �  k  �  I  K  x   �      �    �   �  �   h  �  S  �
  -  f  �'  0  Z,    �-  �  �.  �   e1     �1  
   �1     2                  	               
                                             Apply gaussian blur to the mask output. Has the effect of smoothing the edges of the mask giving less of a hard edge. the size is in pixels. This value should be odd, if an even number is passed in then it will be rounded to the next odd number. NB: Only effects the output preview. Set to 0 for off Directory containing extracted faces, source frames, or a video file. Full path to the alignments file to add the mask to if not at the default location. NB: If the input-type is faces and you wish to update the corresponding alignments file, then you must provide a value here as the location cannot be automatically detected. Helps reduce 'blotchiness' on some masks by making light shades white and dark shades black. Higher values will impact more of the mask. NB: Only effects the output preview. Set to 0 for off Mask tool
Generate masks for existing alignments files. Optional output location. If provided, a preview of the masks created will be output in the given folder. R|How to format the output when processing is set to 'output'.
L|combined: The image contains the face/frame, face mask and masked face.
L|masked: Output the face/frame as rgba image with the face masked.
L|mask: Only output the mask as a single channel image. R|Masker to use.
L|bisenet-fp: Relatively lightweight NN based mask that provides more refined control over the area to be masked including full head masking (configurable in mask settings).
L|components: Mask designed to provide facial segmentation based on the positioning of landmark locations. A convex hull is constructed around the exterior of the landmarks to create a mask.
L|custom: A dummy mask that fills the mask area with all 1s or 0s (configurable in settings). This is only required if you intend to manually edit the custom masks yourself in the manual tool. This mask does not use the GPU.
L|extended: Mask designed to provide facial segmentation based on the positioning of landmark locations. A convex hull is constructed around the exterior of the landmarks and the mask is extended upwards onto the forehead.
L|vgg-clear: Mask designed to provide smart segmentation of mostly frontal faces clear of obstructions. Profile faces and obstructions may result in sub-par performance.
L|vgg-obstructed: Mask designed to provide smart segmentation of mostly frontal faces. The mask model has been specifically trained to recognize some facial obstructions (hands and eyeglasses). Profile faces may result in sub-par performance.
L|unet-dfl: Mask designed to provide smart segmentation of mostly frontal faces. The mask model has been trained by community members and will need testing for further description. Profile faces may result in sub-par performance. R|Run the mask tool on multiple sources. If selected then the other options should be set as follows:
L|input: A parent folder containing either all of the video files to be processed, or containing sub-folders of frames/faces.
L|output-folder: If provided, then sub-folders will be created within the given location to hold the previews for each input.
L|alignments: Alignments field will be ignored for batch processing. The alignments files must exist at the default location (for frames). For batch processing of masks with 'faces' as the input type, then only the PNG header within the extracted faces will be updated. R|Whether the `input` is a folder of faces or a folder frames/video
L|faces: The input is a folder containing extracted faces.
L|frames: The input is a folder containing frames or is a video R|Whether to output the whole frame or only the face box when using output processing. Only has an effect when using frames as input. R|Whether to update all masks in the alignments files, only those faces that do not already have a mask of the given `mask type` or just to output the masks to the `output` location.
L|all: Update the mask for all faces in the alignments file.
L|missing: Create a mask for all faces in the alignments file where a mask does not previously exist.
L|output: Don't update the masks, just output them for review in the given output folder. This command lets you generate masks for existing alignments. data output process Project-Id-Version: 
Report-Msgid-Bugs-To: 
PO-Revision-Date: 2023-04-11 16:07+0700
Last-Translator: 
Language-Team: 
Language: ru
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=3; plural=(n%10==1 && n%100!=11 ? 0 : n%10>=2 && n%10<=4 && (n%100<12 || n%100>14) ? 1 : 2);
X-Generator: Poedit 3.2.2
 Применяет гауссово размытие к выходу маски. Сглаживает края маски, делая их менее жесткими. размер в пикселях. Это значение должно быть нечетным, если передано четное число, то оно будет округлено до следующего нечетного числа. Примечание: влияет только на предварительный просмотр. Установите значение 0 для выключения Папка, содержащая извлеченные лица, исходные кадры или видеофайл. Полный путь к файлу выравниваний для добавления маски, если он не находится в месте по умолчанию. Примечание: Если input-type - лица, и вы хотите обновить соответствующий файл выравнивания, то вы должны указать значение здесь, так как местоположение не может быть определено автоматически. Помогает уменьшить "пятнистость" на некоторых масках, делая светлые оттенки белыми, а темные - черными. Более высокие значения влияют на большую часть маски. Примечание: влияет только на предварительный просмотр. Установите значение 0 для выключения Инструмент "Маска"
Создавайте маски для существующих файлов выравнивания. Необязательное местоположение вывода. Если указано, предварительный просмотр созданных масок будет выведен в указанную папку. R|Как форматировать вывод, когда обработка установлена на 'output'.
L|combined: Изображение содержит лицо/кадр, маску лица и маскированное лицо.
L|masked: Вывести лицо/кадр как изображение rgba с маскированным лицом.
L|mask: Выводить только маску как одноканальное изображение. R|Маскер для использования.
L|bisenet-fp: Относительно легкая маска на основе NN, которая обеспечивает более точный контроль над маскируемой областью, включая полное маскирование головы (настраивается в настройках маски).
L|components: Маска, разработанная для сегментации лица на основе расположения ориентиров. Для создания маски вокруг внешних ориентиров строится выпуклая оболочка.
L|custom (пользовательская): Фиктивная маска, которая заполняет область маски всеми 1 или 0 (настраивается в настройках). Она необходима только в том случае, если вы собираетесь вручную редактировать пользовательские маски в ручном инструменте. Эта маска не использует GPU.
L|extended: Маска предназначена для сегментации лица на основе расположения ориентиров. Выпуклая оболочка строится вокруг внешних ориентиров, и маска расширяется вверх на лоб.
L|vgg-clear: Маска предназначена для интеллектуальной сегментации преимущественно фронтальных лиц без препятствий. Профильные лица и препятствия могут привести к снижению производительности.
L|vgg-obstructed: Маска, разработанная для интеллектуальной сегментации преимущественно фронтальных лиц. Модель маски была специально обучена распознавать некоторые препятствия на лице (руки и очки). Лица в профиль могут иметь низкую производительность.
L|unet-dfl: Маска, разработанная для интеллектуальной сегментации преимущественно фронтальных лиц. Модель маски была обучена членами сообщества и для дальнейшего описания нуждается в тестировании. Профильные лица могут иметь низкую производительность. R|Запустить инструмент маски на нескольких источниках. Если выбрано, то остальные параметры должны быть установлены следующим образом:
L|input: Родительская папка, содержащая либо все видеофайлы для обработки, либо содержащая вложенные папки кадров/лиц.
L|output-folder: Если указано, то в заданном месте будут созданы вложенные папки для хранения превью для каждого входа.
L|alignments: Поле выравнивания будет игнорироваться при пакетной обработке. Файлы выравнивания должны существовать в месте по умолчанию (для кадров). При пакетной обработке масок с типом входа "лица" будут обновлены только заголовки PNG в извлеченных лицах. R|Выбирается ли "вход" как папка лиц или как папка кадров/видео
L|faces: Входом является папка, содержащая извлеченные лица.
L|frames: Входом является папка с кадрами или видео R|Выводить ли весь кадр или только поле лица при использовании выходной обработки. Имеет значение только при использовании кадров в качестве входных данных. R|Обновлять ли все маски в файлах выравнивания, только те лица, которые еще не имеют маски заданного `mask type` или просто выводить маски в место `output`.
L|all: Обновить маску для всех лиц в файле выравнивания.
L|missing: Создать маску для всех лиц в файле выравнивания, для которых маска ранее не существовала.
L|output: Не обновлять маски, а просто вывести их для просмотра в указанную выходную папку. Эта команда позволяет генерировать маски для существующих выравниваний. данные вывод обработка 