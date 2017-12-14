<!-- This html code has been designed with Bootstrap 3.3 in mind. -->
<div id="1" class="panel panel-default">
  <#--
    When the text is long and the screen is small, it can be annoying to alwas scroll up to change the color.
    Especially since this is one way to loose track of where you last were. So some solution for that problem would be good.
    Possible solutions:
    * Make div#annotatable it's own scrollable thing, using: style="overflow-y:scroll; height:90%"
    * Make the "highlighter-control" scroll with the screen when the user scrolls past a certain point (similar to the blue menu at the top)
  -->
  <div class="panel-heading">The "IMKER" Case Study - Case Text</div>
  <div class="panel-body">
    <p>You can highlight parts of the text by selecting them with the mouse. Those highlights can be removed by simply clicking on them. Colors can be changed by selecting them or using the number keys 1-4. To permanently store the result in a readable format you can print it, for example as a PDF (make sure that "print background" is enabled).</p>
    <div id="highlighter-control">
      <!-- The save-load is positioned first, because of the haxor things we do to get a nice looking "Load" button -->
      <div id="highlight-save-load"><!-- this element is populated through JavaScript, depending on whether certain APIs are available. --></div>
      <div id="color-picker">
        Color:
        <div class="choosable-color selected" style="background-color:#ffff66; vertical-align:middle;">1</div>
        <div class="choosable-color" style="background-color:#ccff00; vertical-align:middle;">2</div>
        <div class="choosable-color" style="background-color:#ff8fff; vertical-align:middle;">3</div>
        <div class="choosable-color" style="background-color:#33efff; vertical-align:middle;">4</div>
      </div>
      <button type="button" id="clear-highlights" class="btn btn-default">Clear</button>
    </div>
    <div id="annotatable">
      <p style="font-style: italic;">Consider the text below to be the transcript of an interview with a beekeeper. While the interviewer might direct the conversations at times, the actual questions are omitted and only the information from the beekeeper is kept.</p>
      <p>As a beekeeper I currently tend to five hives spread across two apiaries. I put all of my hives in places I can get to with my car, since they can be quite heavy and it is easier to move them with my pickup truck from one apiary to a different one or back to the tool-shed to perform some repairs. Currently I have three hives between Sherwood Forest and McJenkins field, Sherwood Forest being west and McJenkins field being east of the apiary. This should produce some interesting honey with the lime trees from Sherwood Forest and the sunflowers from the field. Of course there is always some wildflower nectar mixed in from the forest, since we can't control the bees, but the majority of nectar from the forest comes from the lime trees. I also have two hives south of McJenkins field, which will only produce sunflower honey. This apiary is provided by McJenkins to help pollinate their sunflowers. There is also Clover Fields way south of Sherwood Forest, which contains mostly thyme flowers and maple trees. The state provides an apiary to the east of Clover Fields, number 352 I think, but I currently don't have any hives over there.</p>
      <p>Now I gather, since you came to me asking about beekeeping, that you don't yet know too much about it. So let me tell you first a bit about some of the words we typically use, before I give you more details about my work. A group or family of bees is called a colony, which revolves around one queen, and also has hundreds to thousands of drones and hopefully thousands of workers, but more about those later. Now the colony has to live somewhere, like in a house, and this is called the hive and they typically don't share it with other colonies. As a beekeeper, I provide the hive to the colony by stacking several different parts on one another, most notably specific boxes which we also call "supers". Those parts provide different functions, like a place for the brood or to store the honey. Supers for breeding and storing honey generally contain frames in which the bees can build their honeycombs. We also use a "queen excluder" to control in which honeycombs the queen can lay her eggs and where the bees should store the honey. Naturally we have to put the hives somewhere and this plot of land is called the apiary, where the bees can go about their work. You have to excuse, we sometimes use "hive" when we actually mean "colony", but I'll try to avoid this as much as possible.</p>
      <p>So, my task as the beekeeper is for one to provide honey to the people. I have to harvest, bottle and brand the honey before I sell it. Usually I harvest most of the honey during autumn while the bees are still active a bit and give the bees some sugar syrup as substitute food so they don't starve in the winter. During autumn and winter I also have to support the bees, by giving additional food, protecting them from pests and parasites and the like. There are special mouse guards to prevent mice and other rodent from getting into a hive, but sometimes they can chew through it. So when it's cold and the bees are mostly dormant I take care of the hives. However, it is important during that time to not expose the bees to the cold. The bees keep the inside of the hive warm and opening one would drop the temperature which could result in the colony's death. Should I see that a colony has died out I remove the hive from the apiary and clean it. If some parts of any hive or the apiary are damaged I repair them. Also while it is still cold I use the time to move the hives on the apiary or between the apiaries, once they are back in good shape.</p>
      <p>Once it gets warmer I do a more thorough inspection of the hives and their colonies, since we can finally open them without exposing the bees to danger. Of course I have to take care of the hives also during spring and summer from time to time. Now, the bees do need some freedom and they can go about their work without much interruption, so it's enough to check on them once every two to three weeks. If I should find a problem during the routinely check, like damages after a storm or should some Varroa mites have nested in the hive, I have to take action. Parasites like Varroa and diseases of different kinds are a problem and can lead to the death of a colony if not taken care of. The colony can also be destroyed from outside dangers like predators. When the bees sense danger they emit a pheromone so the other bees become alerted. To prevent the bees from becoming alerted and getting stung while checking on the hive I have my smoker. The smoker emits a special smoke which calms the bees down and masks the pheromones. If I need the smoker or not depends on how active the bees are. Whether they are active or dormant is based on the availability of food sources, namely nectar and pollen. When the plants stop their winter rest, the bees also become more active. Also, during the second half of spring the bees can swarm. Swarming is when the old queen and about half of the colony leave to find a new hive, leaving the old hive to a new queen. So I have to prepare for that too by providing a new place for the old colony to live and taking care of the new colony. My equipment, like the smoker, also needs to be cleaned, maintained and prepared, which I do at the beginning of the year, before I check for dead or damaged hives.</p>
      <p>Various equipment helps me to perform my tasks, like protective clothing to prevent stings or the aforementioned bee smoker to calm the bees. There are also special parts in the bee hive to make my work easier, like a queen excluder that prevents the queen bee from going from one box to another, so I don't have to worry that I extract any bee larvae from there. Recently I have also invested in a new machine  to help me with extracting the honey from the honeycombs and bottling it. It helps me greatly, since all I have to do is put in are the frames with the honeycombs containing the honey, some bottles and the caps and the machine takes care of extracting and bottling the honey. I can even reuse most of the frames with the honeycombs, and the bees also have less work since they don't have to rebuild them. The machine simply takes the honeycombs, removes the beeswax sealing away the honey and then starts extracting the honey from them by putting them in a centrifuge, spinning them around and the centrifugal force takes care of the rest. It checks regularly if a frame is finished in which case it is removed from the centrifuge. Once the machine extracted the honey it is filtered, although that takes a bit more time. After filtering it puts 250 gram or a bit over half a pound in a bottle and even puts the cap on it. So in the end I have the bottled honey ready to sell. The average honeycomb yields around 200 gram or less than half of a pound, so not quite enough for a full bottle. As far as I've seen the machine works in batches of four honeycombs and the centrifuge has room for three batches at once.</p>
      <p>I also have a log book where I keep most of the information which is important or I find interesting. In there I write down about the different apiaries that are around with their owners names and general size available, which hives and colonies I have as well as keeping stock of the honey that has been harvested both the total quantity and how much I have remaining. The honey I keep organized based on its type, like sunflower honey, and the date it has been harvested. I also keep the "birth dates" of my colonies and notes about their current state in the log book. For the hives I keep track how they are built, which types of supers I use, how they are assembled, their size and how many frames the individual supers contain. I also keep short notes about the states of the individual parts of a hive if something is out of the ordinary.</p>
      <p>Now, I still haven't told you how the bees actually make the honey. Well, when they have to produce more honey they fly to a blooming flower and collect the nectar until their nectar stomach is full. They have to visit several flowers to actually fill the stomach, so they additionally pollinate the visited plants. Also each plant provides a slightly different type of nectar, which leads to the different colours and tastes of honey. Once the bee's stomach is full they return to their hive where the nectar is processed by several bees. This happens through the enzymes in their stomach, so they regurgitate and exchange the nectar between one another. Once the nectar has been processed enough the bee regurgitates it into a honeycomb and the bees start beating their wings around it to evaporate the water, turning the nectar into honey. Then it is sealed with beeswax to be stored for the future or, well, harvested by me. The bee also communicates the found sources of food to the other bees through a special dance. This dance tells the other bees the direction, distance and how plentiful the bounty is, so they use this information when setting out to collect the nectar. And that is how bees create the honey.</p>
      <p>There are of course several types of bees in a colony, and they do more besides producing honey. Everybody probably knows the normal bees which are the workers, of which there should be thousands in a healthy colony, which makes counting them difficult so I don't even try. Instead I estimate their number by counting how many leave the hive in a minute. Besides collecting and processing the honey the worker bees also defend the colony and keep the hive clean and repair honeycombs and other things with beeswax. Then there is also the queen, which is pretty much at the centre of the colony. She is the only one that lays eggs and can also control the behaviour of the bees through pheromones, for example to start swarming. There are also typically hundreds to thousands of drones in a healthy and active hive. Their function is only to mate with the queen, so she can lay fertilized eggs.</p>
      <p>Well, even though I would like to stay longer and tell you more about beekeeping and bees, unfortunately I have to go and take care of my bees now. But, I do hope that this was informative for you and that you can get something out of it for your modelling lecture or something. Bye.</p>
    </div>
  </div>
</div>

<style>
  div#highlighter-control {
    margin: 5px 0px 10px 0px;
  }

  div#color-picker {
    margin: 0px 10px;
    display: inline-block;
  }

  div.choosable-color {
    text-align: center;
    width: 24px;
    height: 24px;
    border: 1px solid #111111;
    border-radius: 12px;
    margin: 3px 5px;
    display: inline-block;
    cursor: pointer;
  }

  div.selected {
    box-shadow: 0 0 4px 2px #666666;
  }

  div#highlight-save-load {
    margin: 0px 10px;
    display: inline-block;
  }

  button#save-highlight {
    margin-left:10px;
  }

  span.btn-file {
    position: relative;
    overflow: hidden;
  }

  span.btn-file input[type=file] {
    position: absolute;
    top: 0;
    right: 0;
    min-width: 100%;
    min-height: 100%;
    font-size: 30px;
    text-align: right;
    filter: alpha(opacity=0);
    opacity: 0;
    outline: none;
    background: white;
    cursor: inherit;
    display: block;
  }
</style>

<script type="text/javascript" src="${JavaScripts.TextHighlighter.loc}"></script>
<script type="text/javascript" src="${JavaScripts.FileSaver.loc}"></script>
<script>
  // Notes: Nesting highlights (i.e. first making a big one with one color and then putting a highlight with a different color inside of that, like a proper subset) leads to them being linked when removing. Removing the "outer" highlight also removes the "inner" highlight.
  //        HOWEVER, overlapping highlights is fine as long as neither one is a subset of the other during selection, i.e. partial overlapping at the begining or the end.


  /*************** BASE ***************/

  // We use this variable to indicate that some highlighting was performed and in which case the "clicked" highlight should not be removed.
  var highlighted = false;
  // The TextHighlither object, the core of the entire thing. It uses Text.Highlighter.min.js
  var hltr = new TextHighlighter(document.getElementById("annotatable"),
  {
    onAfterHighlight: function (range, hlts, timestamp) {
      highlighted = true;
      // This is necessary, because it seems that the timestamps aren't properly updated when part of the selected thing was marked.
      // More specifically: when there already is a highlight, and then we highlight around that (selecting also the previous highlight) the date-timestamp of the inner highlight (that was previously there) wasn't properly updated when multiple paragraphs (i.e. selecting over several <p> elements) were marked. The behaviour was: extend the already available highlighting to cover more text without changing its timestamp.
      for(var i=0; i<hlts.length; i++) {
        hlts[i].setAttribute("data-timestamp", timestamp);
        // We also have to add the !important, to the background-color style since things like bootstrap otherwise override our inline style while printing that we want to keep.
        hlts[i].style.setProperty ("background-color", hlts[i].style.backgroundColor, "important");
      }
    }
  });

  // Special function that is called onmouseup to remove clicked highlights
  document.getElementById("annotatable").addEventListener("mouseup", function(event) {
    if(highlighted) {
      highlighted = false;
    } else {
      var clickedElement = document.elementFromPoint(event.clientX, event.clientY);
      if (clickedElement.nodeName.toUpperCase()=="SPAN") {
        var timestamp = clickedElement.getAttribute("data-timestamp");
        var allSpans = document.getElementById("annotatable").getElementsByTagName("span");
        for(var i=allSpans.length-1; i >= 0 ; i--) {
          if(allSpans[i].getAttribute("data-timestamp") == timestamp) {
            hltr.removeHighlights(allSpans[i]);
          }
        }
      }
    }
  });


  /*************** COLOR SELECTION ***************/

  // This code allows the color-picker to change the highlighter color and assigns the handler to the choosable-colors.
  // Which color to use is based on the background-color attribute of those html elements.
  var chooseColor = function () {
    // Set the color of the picker
    hltr.setColor(this.style["background-color"]);
    // make sure that only the selected color is of class "selected"
    var colpick = document.getElementById("color-picker");
    var colorels = colpick.getElementsByClassName("choosable-color");
    for(var i=0; i<colorels.length; i++) {
      if(colorels[i] === this) {
        colorels[i].className = "choosable-color selected";
      } else {
        colorels[i].className = "choosable-color";
      }
    }
  }

  // I use a function here to initialize the color-pickers code so that the variables don't become global
  function initChoosableColors() {
    // Get all the elements that represent the possible colors that can be chosen
    var colpick = document.getElementById("color-picker");
    var colorels = colpick.getElementsByClassName("choosable-color");
    for(var i=0; i<colorels.length; i++) {
      // If one is already selected then set its color for the highlighter
      if(colorels[i].classList.contains("selected")) {
        hltr.setColor(colorels[i].style["background-color"]);
      }
      // Add the function to change color of the highlighter to the elements onclick
      colorels[i].onclick = chooseColor;
    }
  }
  initChoosableColors();

  // An event that captures button presses and based on the number pressed the color is selected
  // For it to work we have to put that code on the <body>
  try {
    document.getElementsByTagName("body")[0].addEventListener("keypress", function(event) {
      var keynum = parseInt(event.key);
      var colorels = document.getElementById("color-picker").getElementsByClassName("choosable-color");
      if(keynum <= colorels.length) {
        colorels[keynum-1].onclick();
      }
    });
  } catch (err) { alert(err); }


  /*************** CLEAR BUTTON ***************/

  document.getElementById("clear-highlights").addEventListener("click", function() {
    hltr.removeHighlights();
  });


  /*************** LOCAL STORAGE ***************/

  // This handles saving and loading highlights in files, if available by the browser.
  function initLoadingSaving() {
    var saveloadel = document.getElementById("highlight-save-load");
    if (window.File && window.FileReader && window.FileList && window.Blob) {
      // If the relevant APIs seem to be available in this browser, then we add the two buttons for saving and loading.
      // First the load button, because of how the "style" gets it to work.
      var loadbutton = document.createElement("input");
      loadbutton.setAttribute("type", "file");
      loadbutton.setAttribute("id", "load-highlight");
      loadbutton.addEventListener("change", function() {
        // This function takes care of loading the highlights from the selected file.
        var reader = new FileReader();
        reader.onload = function () {
          hltr.removeHighlights();
          try {
            hltr.deserializeHighlights(this.result);
          } catch (err) { alert("Error loading highlights from provided file"); }
        }
        var content = reader.readAsText(loadbutton.files[0]);
      });
      var loadspan = document.createElement("span");
      loadspan.setAttribute("class", "btn btn-default btn-file");
      loadspan.appendChild(document.createTextNode("Load"));
      loadspan.appendChild(loadbutton);
      saveloadel.appendChild(loadspan);
      // Then the save button
      var savebutton = document.createElement("button");
      savebutton.setAttribute("type", "button");
      savebutton.setAttribute("id", "save-highlight");
      savebutton.setAttribute("class", "btn btn-default");
      savebutton.addEventListener("click", function() {
        // This function takes care of providing the highlights as a file to download.
        // It uses FileSaver.min.js
        saveAs(new Blob([hltr.serializeHighlights()], {type : "text/plain"}), "highlight.txt");
      });
      savebutton.appendChild(document.createTextNode("Save"));
      saveloadel.appendChild(savebutton);
    } else {
      // If the relevant APIs are not available in this browser, then we add a normal message.
      saveloadel.appendChild(document.createTextNode("Saving and Loading not supported by this browser."));
    }
  }
  initLoadingSaving();
</script>