function htmlToJson(div,obj){
 if(!obj){obj=[]}
 var tag = {}
 tag['tagName']=div.tagName
 tag['children'] = []
 for(var i = 0; i< div.children.length;i++){
    tag['children'].push(htmlToJson(div.children[i]))
 }
 for(var i = 0; i< div.attributes.length;i++){
    var attr= div.attributes[i]
    tag['@'+attr.name] = attr.value
 }
 return tag    
}
