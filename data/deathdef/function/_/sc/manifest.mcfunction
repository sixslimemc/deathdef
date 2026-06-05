#> deathdef:_/sc/manifest
# @ MANIFEST

data remove storage slimecore:in manifest.pack

data modify storage slimecore:in manifest.pack.pack_id set value "deathdef"
data modify storage slimecore:in manifest.pack.author_id set value "sixslime"
data modify storage slimecore:in manifest.pack.version set value {major:0, minor:1, patch:0}
data modify storage slimecore:in manifest.pack.url set value "https://github.com/sixslimemc/deathdef/releases/download/v0.1.0/sixslime.deathdef.0.1.0.zip"

data modify storage slimecore:in manifest.pack.display.name set value "DeathDef"
data modify storage slimecore:in manifest.pack.display.summary set value "Provides an abstract interface to re-implement player death."
data modify storage slimecore:in manifest.pack.display.author_name set value "SixSlime"

data modify storage slimecore:in manifest.pack.display.links.author set value "https://github.com/sixslimemc"
data modify storage slimecore:in manifest.pack.display.links.info set value "https://github.com/sixslimemc/deathdef"
data modify storage slimecore:in manifest.pack.display.links.versions set value "https://github.com/sixslimemc/deathdef/releases"

data modify storage slimecore:in manifest.pack.entrypoints set value []
data modify storage slimecore:in manifest.pack.preload_entrypoints set value []

data modify storage slimecore:in manifest.pack.abstract_declarations set value []
data modify storage slimecore:in manifest.pack.abstract_declarations append value {id:"death"}

data modify storage slimecore:in manifest.pack.abstract_implementations set value []

data modify storage slimecore:in manifest.pack.dependencies set value []
data modify storage slimecore:in manifest.pack.dependencies append value {pack_id:"idied", author_id:"sixslime", optional:false, version:{major:0, minor:1}, download:{url:"https://github.com/sixslimemc/idied/releases/download/v0.1.0/sixslime.idied.0.1.0.zip", version:{major:0, minor:1, patch:0}}}
data modify storage slimecore:in manifest.pack.dependencies append value {pack_id:"six", author_id:"sixslime", optional:false, version:{major:0, minor:1}, download:{url:"https://github.com/sixslimemc/six/releases/download/v0.1.0/sixslime.six.0.1.0.zip", version:{major:0, minor:1, patch:0}}}
data modify storage slimecore:in manifest.pack.dependencies append value {pack_id:"varchunk", author_id:"sixslime", optional:false, version:{major:0, minor:1}, download:{url:"https://github.com/sixslimemc/varchunk/releases/download/v0.1.0/sixslime.varchunk.0.1.0.zip", version:{major:0, minor:1, patch:0}}}

data modify storage slimecore:in manifest.pack.is_library set value true

function slimecore:api/manifest