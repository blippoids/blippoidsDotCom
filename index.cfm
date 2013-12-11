<head>
  <link rel="stylesheet" type="text/css" href="blippoids.css">
</head>
<body>
  <div class='title'>
    <h1>b l i p p o i d s</h1>
    <br>
    <cfset nounidx = Int(Rand() * 10 + 1)>
    <cfset adjidx = Int(Rand() * 10 + 1)>
    <cfset verbidx = Int(Rand() * 10 + 1)>
  
    <cfquery datasource='blippoid_zen' name='adjs'>
    	select adj from adjective
    </cfquery>
    
    <cfoutput query='adjs' maxrows='1' startrow='#adjidx#'>The #adj# </cfoutput>
    
    <cfquery datasource='blippoid_zen' name='nouns'>
      select nouny from noun
    </cfquery>
    
    <cfoutput query='nouns' maxrows='1' startrow='#nounidx#'>#nouny# is</cfoutput>
  
    <cfquery datasource='blippoid_zen' name='verbs'>
      select ing from verb
    </cfquery>
  
    <cfoutput query='verbs' maxrows='1' startrow='#verbidx#'> #ing#. </cfoutput>
    <br><br>
    (reload for a new sentence)
  </div>
  
  <div>
  <audio src="images/MrMic.ogg" controls autoplay>
  <p>hey man, this browsa don werk</p>
  </audio>
  </div>
</body>