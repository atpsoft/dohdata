module DohData

@@last_names = \
['smith','johnson','williams','jones','brown','davis','miller','wilson','moore','anderson','thomas','jackson','white','harris'\
,'martin','thompson','robinson','clark','lewis','lee','walker','hall','young' \
,'king','wright','hill','scott','green','adams','baker','nelson','carter','mitchell','roberts','turner' \
,'phillips','campbell','parker','evans','edwards','collins','stewart','morris','rogers','reed','cook','morgan','bell','murphy' \
,'bailey','rivera','richardson','cox','howard','ward','peterson','gray','james','watson','brooks','kelly','sanders' \
,'price','bennett','wood','barnes','ross','henderson','coleman','jenkins','perry','powell','long','patterson','hughes','washington' \
,'butler','simmons','foster','bryant','alexander','russell','griffin','hayes','myers','ford','hamilton','graham','sullivan' \
,'wallace','woods','cole','west','jordan','owens','reynolds','fisher','ellis','harrison','mcdonald' \
,'murray','freeman','wells','webb','simpson','stevens','tucker','porter','hunter','hicks','crawford','henry','boyd','mason','morales','kennedy' \
,'warren','dixon','ramos','burns','gordon','holmes','rice','robertson','hunt','black','daniels','palmer','mills','nichols','grant' \
,'knight','ferguson','rose','stone','hawkins','dunn','perkins','hudson','spencer','gardner','stephens','payne','pierce','berry' \
,'arnold','wagner','willis','ray','watkins','olson','carroll','duncan','snyder' \
]

@@first_names= \
['james','thomas','christopher','paul','mark','donald' \
,'brian','ronald','anthony','kevin','jason','matthew','gary','timothy','larry','jeffrey','frank','scott' \
,'andrew','raymond','gregory','jerry','dennis','peter','carl','arthur','ryan' \
,'roger','joe','juan','jack','albert','jonathan','justin','terry','gerald','keith','willie','ralph','lawrence','nicholas' \
,'bruce','brandon','harry','fred','wayne','steve','louis','jeremy','aaron','howard','eugene','russell','bobby' \
,'ernest','phillip','todd','jesse','craig','alan','shawn','clarence','sean','philip','chris','earl','jimmy','danny','bryan' \
,'tony','leonard','nathan','dale','rodney','curtis','norman','allen','marvin','vincent','glenn','jeffery','travis' \
,'jeff','chad','jacob','lee','alfred','kyle','francis','bradley','herbert','frederick','ray','don','eddie','troy' \
,'randall','barry','bernard','leroy','marcus','micheal','theodore','clifford','jim','calvin' \
,'alex','jon','mary','linda','barbara','jennifer','susan','margaret','dorothy','lisa','betty','helen' \
,'donna','carol','ruth','sharon','michelle','laura','sarah','kimberly','deborah','jessica','shirley','cynthia','angela','melissa','brenda' \
,'amy','anna','rebecca','virginia','kathleen','pamela','debra','amanda','stephanie','carolyn','christine','marie','janet','catherine','frances' \
,'ann','joyce','diane','alice','julie','heather','teresa','doris','evelyn','jean','cheryl','mildred','katherine','joan','ashley','judith' \
,'rose','janice','kelly','nicole','judy','christina','kathy','theresa','beverly','denise','tammy','irene','jane','lori','rachel','marilyn','andrea' \
,'kathryn','louise','sara','anne','jacqueline','wanda','bonnie','julia','ruby','lois','tina','phyllis','norma','paula','annie','lillian','emily','robin' \
,'peggy','crystal','rita','dawn','connie','florence','tracy','tiffany','carmen','rosa','cindy','wendy','victoria','edith','kim' \
,'sherry','sylvia','josephine','thelma','shannon','sheila','ethel','ellen','elaine','marjorie','carrie','charlotte','esther','pauline','emma' \
,'rhonda','hazel','amber','eva','debbie','april','leslie','clara','lucille','joanne','eleanor','valerie','danielle','megan' \
,'alicia','suzanne','michele','gail','bertha','darlene','veronica','jill','erin','geraldine','lauren','cathy','joann','lorraine','lynn','sally','regina' \
,'erica','beatrice','dolores','bernice','audrey','yvonne','annette','june','samantha','marion','dana','stacy','ana','renee','ida','vivian','roberta' \
,'holly','brittany','melanie','loretta','yolanda','jeanette','laurie','katie','kristen','vanessa','alma','sue','elsie','beth','jeanne','vicki','carla' \
,'tara','rosemary','eileen','terri','gertrude','lucy','tonya' \
]

@@ssn_group_order = [1,3,5,7,9,10,12,14,16,18,20,22,24,26,28,30,32,34,36,38,40,42,44,46,48,50,52,54,56,58,60,62,64,66,68,70,72,74,76,78,80,82,84,86,88,90,92,94,96,98,2,4,6,8,11,13,15,17,19,21,23,25,27,29,31,33,35,37,39,41,43,45,47,49,51,53,55,57,59,61,63,65,67,69,71,73,75,77,79,81,83,85,87,89,91,93,95,97,99]

@@ssn_area_highgroups = {1=>98,2=>98,3=>98,4=>4,5=>4,6=>4,7=>4,8=>86,9=>86,10=>86,11=>86,12=>86,13=>86,14=>86,15=>86,16=>86,17=>86,18=>86,19=>86,20=>86,21=>86,22=>86,23=>86,24=>86,25=>86,26=>86,27=>86,28=>86,29=>86,30=>86,31=>86,32=>86,33=>86,34=>84,35=>70,36=>70,37=>68,38=>68,39=>68,40=>6,41=>6,42=>6,43=>6,44=>6,45=>6,46=>4,47=>4,48=>4,49=>4,50=>92,51=>92,52=>92,53=>92,54=>92,55=>92,56=>92,57=>92,58=>92,59=>92,60=>92,61=>92,62=>92,63=>92,64=>92,65=>92,66=>92,67=>92,68=>92,69=>92,70=>92,71=>92,72=>92,73=>92,74=>92,75=>92,76=>92,77=>92,78=>92,79=>92,80=>92,81=>92,82=>92,83=>92,84=>92,85=>92,86=>92,87=>92,88=>92,89=>92,90=>92,91=>92,92=>92,93=>92,94=>92,95=>92,96=>92,97=>92,98=>92,99=>92,100=>92,101=>92,102=>92,103=>92,104=>92,105=>92,106=>92,107=>92,108=>92,109=>92,110=>92,111=>92,112=>92,113=>92,114=>92,115=>92,116=>92,117=>92,118=>92,119=>92,120=>92,121=>92,122=>92,123=>92,124=>92,125=>92,126=>92,127=>90,128=>90,129=>90,130=>90,131=>90,132=>90,133=>90,134=>90,135=>13,136=>13,137=>13,138=>13,139=>13,140=>13,141=>13,142=>13,143=>13,144=>13,145=>13,146=>13,147=>11,148=>11,149=>11,150=>11,151=>11,152=>11,153=>11,154=>11,155=>11,156=>11,157=>11,158=>11,159=>82,160=>82,161=>82,162=>82,163=>80,164=>80,165=>80,166=>80,167=>80,168=>80,169=>80,170=>80,171=>80,172=>80,173=>80,174=>80,175=>80,176=>80,177=>80,178=>80,179=>80,180=>80,181=>80,182=>80,183=>80,184=>80,185=>80,186=>80,187=>80,188=>80,189=>80,190=>80,191=>80,192=>80,193=>80,194=>80,195=>80,196=>80,197=>80,198=>80,199=>80,200=>80,201=>80,202=>80,203=>80,204=>80,205=>80,206=>80,207=>80,208=>80,209=>80,210=>80,211=>80,212=>67,213=>67,214=>67,215=>67,216=>67,217=>67,218=>67,219=>67,220=>65,221=>98,222=>96,223=>97,224=>97,225=>97,226=>97,227=>97,228=>97,229=>95,230=>95,231=>95,232=>51,233=>49,234=>49,235=>49,236=>49,237=>99,238=>99,239=>99,240=>99,241=>99,242=>99,243=>99,244=>99,245=>99,246=>99,247=>99,248=>99,249=>99,250=>99,251=>99,252=>99,253=>99,254=>99,255=>99,256=>99,257=>99,258=>99,259=>99,260=>99,261=>99,262=>99,263=>99,264=>99,265=>99,266=>99,267=>99,268=>8,269=>8,270=>8,271=>8,272=>8,273=>8,274=>8,275=>8,276=>8,277=>8,278=>8,279=>8,280=>8,281=>8,282=>8,283=>8,284=>8,285=>8,286=>8,287=>8,288=>8,289=>6,290=>6,291=>6,292=>6,293=>6,294=>6,295=>6,296=>6,297=>6,298=>6,299=>6,300=>6,301=>6,302=>6,303=>27,304=>27,305=>27,306=>27,307=>27,308=>27,309=>27,310=>27,311=>25,312=>25,313=>25,314=>25,315=>25,316=>25,317=>25,318=>2,319=>2,320=>2,321=>2,322=>2,323=>2,324=>2,325=>2,326=>2,327=>2,328=>2,329=>2,330=>2,331=>2,332=>2,333=>2,334=>2,335=>2,336=>2,337=>2,338=>2,339=>2,340=>2,341=>2,342=>2,343=>2,344=>2,345=>2,346=>2,347=>2,348=>2,349=>2,350=>98,351=>98,352=>98,353=>98,354=>98,355=>98,356=>98,357=>98,358=>98,359=>98,360=>98,361=>98,362=>29,363=>29,364=>29,365=>29,366=>29,367=>29,368=>29,369=>29,370=>29,371=>29,372=>29,373=>29,374=>29,375=>29,376=>29,377=>29,378=>29,379=>29,380=>29,381=>27,382=>27,383=>27,384=>27,385=>27,386=>27,387=>25,388=>23,389=>23,390=>23,391=>23,392=>23,393=>23,394=>23,395=>23,396=>23,397=>23,398=>23,399=>23,400=>61,401=>61,402=>61,403=>61,404=>61,405=>59,406=>59,407=>59,408=>97,409=>95,410=>95,411=>95,412=>95,413=>95,414=>95,415=>95,416=>57,417=>55,418=>55,419=>55,420=>55,421=>55,422=>55,423=>55,424=>55,425=>93,426=>93,427=>93,428=>93,429=>99,430=>99,431=>99,432=>99,433=>99,434=>99,435=>99,436=>99,437=>99,438=>99,439=>99,440=>19,441=>19,442=>17,443=>17,444=>17,445=>17,446=>17,447=>17,448=>17,449=>99,450=>99,451=>99,452=>99,453=>99,454=>99,455=>99,456=>99,457=>99,458=>99,459=>99,460=>99,461=>99,462=>99,463=>99,464=>99,465=>99,466=>99,467=>99,468=>43,469=>43,470=>43,471=>43,472=>43,473=>43,474=>43,475=>41,476=>41,477=>41,478=>33,479=>33,480=>33,481=>33,482=>33,483=>33,484=>31,485=>31,486=>21,487=>21,488=>21,489=>21,490=>21,491=>21,492=>19,493=>19,494=>19,495=>19,496=>19,497=>19,498=>19,499=>19,500=>19,501=>29,502=>29,503=>35,504=>35,505=>47,506=>45,507=>45,508=>45,509=>23,510=>23,511=>23,512=>21,513=>21,514=>21,515=>21,516=>39,517=>37,518=>67,519=>67,520=>47,521=>99,522=>99,523=>99,524=>99,525=>99,526=>99,527=>99,528=>99,529=>99,530=>99,531=>53,532=>53,533=>53,534=>53,535=>51,536=>51,537=>51,538=>51,539=>51,540=>65,541=>65,542=>65,543=>65,544=>63,545=>99,546=>99,547=>99,548=>99,549=>99,550=>99,551=>99,552=>99,553=>99,554=>99,555=>99,556=>99,557=>99,558=>99,559=>99,560=>99,561=>99,562=>99,563=>99,564=>99,565=>99,566=>99,567=>99,568=>99,569=>99,570=>99,571=>99,572=>99,573=>99,574=>39,575=>97,576=>97,577=>37,578=>35,579=>35,580=>35,581=>99,582=>99,583=>99,584=>99,585=>99,586=>51,587=>93,589=>99,590=>99,591=>99,592=>99,593=>99,594=>99,595=>99,596=>74,597=>74,598=>72,599=>72,600=>99,601=>99,602=>41,603=>41,604=>41,605=>41,606=>41,607=>41,608=>41,609=>41,610=>41,611=>41,612=>41,613=>41,614=>41,615=>41,616=>41,617=>41,618=>41,619=>41,620=>41,621=>41,622=>39,623=>39,624=>39,625=>39,626=>39,627=>88,628=>88,629=>88,630=>88,631=>88,632=>88,633=>88,634=>88,635=>88,636=>88,637=>88,638=>88,639=>88,640=>88,641=>88,642=>86,643=>86,644=>86,645=>86,646=>72,647=>72,648=>32,649=>30,650=>28,651=>28,652=>28,653=>28,654=>16,655=>16,656=>16,657=>14,658=>14,659=>9,660=>9,661=>7,662=>7,663=>7,664=>7,665=>7,667=>20,668=>20,669=>20,670=>20,671=>20,672=>20,673=>18,674=>18,675=>18,676=>7,677=>5,678=>5,679=>5,680=>52,681=>3,682=>3,683=>3,684=>1,685=>1,686=>1,687=>3,688=>1,689=>1,690=>1,700=>18,701=>18,702=>18,703=>18,704=>18,705=>18,706=>18,707=>18,708=>18,709=>18,710=>18,711=>18,712=>18,713=>18,714=>18,715=>18,716=>18,717=>18,718=>18,719=>18,720=>18,721=>18,722=>18,723=>18,724=>28,725=>18,726=>18,727=>10,728=>14,729=>1,730=>1,731=>1,764=>36,765=>34,766=>24,767=>24,768=>24,769=>24,770=>24,771=>22,772=>22}.freeze

@@email_domains = \
['yahoo', 'gmail', 'aol', 'hotmail', 'gmail', 'inbox', 'juno', 'email', 'fastmail', 'slowmail', 'netmail', 'gmail','xmission','earthlink','secret','blah' \
,'geekland','techworld','lavaland','moonsarecool','excite','bellsouth','netzero','sbcglobal','netscape','charter','hushmail','comcast','msn','verizon','att' \
,'peoplepc'
].freeze

@@email_tlds = ['com','net','org','info','biz','tv','us','name','cc','cn','com.cn','net.cn','org.cn','ws']

@@cities = \
['Tacoma','Montgomery','Tucson','Riverside','Bakersfield','Austin','Portland','Minneapolis','Baton Rouge','Stockton','St Louis','San Antonio' \
,'Oakland','Albuquerque','Seattle','Fresno','Birmingham','San Francisco','Long Beach','Dallas','Philadelphia','Phoenix','San Jose','Milwaukee' \
,'Kansas City','Sacramento','Houston','San Diego','Los Angeles'
]

@@street_names = ['Park','Main','Oak','Pine','Oak','Pine','Maple','Cedar','Elm','Washington','Lake','Hill','Sunset','Broadway','Harrison','Higgins','Lincoln']

@@street_types = ['Ave','Blvd','Ctr','Cir','Ct','Dr','Grv','Jct','Ln','Mnr','Mtn','Pkwy','Sq','St']

@@bank_routing_numbers = \
['065000090','081000032','091000019','111000025','111900659','121000358','121042882','121122676','122000247','122000496','122000661','122101706' \
,'125000024','256074974','291070001','322271627','325070760','303986313','296073414'
]

@@employers = ['Google', 'Geeks R Us', 'Home Depot', 'Wal-Mart', 'Shopko', "Wendy's", "Staples", "E-Bay", "McDonald's", "Computer World", "OfficeMax"]

@@generation_options = ['I', 'II', 'III', 'IV', 'Jr', 'Sr']

@@us_state_abbreviations = ['AL', 'AK', 'AZ', 'AR', 'CA', 'CO', 'CT', 'DE', 'DC', 'FL', 'GA', 'HI', 'ID', 'IL', 'IN', 'IA', 'KS', 'KY', 'LA', 'ME', 'MD', 'MA', 'MI', 'MN', 'MS', 'MO', 'MT', 'NE', 'NV', 'NH', 'NJ', 'NM', 'NY', 'NC', 'ND', 'OH', 'OK', 'OR', 'PA', 'RI', 'SC', 'SD', 'TN', 'TX', 'UT', 'VT', 'VA', 'WA', 'WV', 'WI', 'WY']
@@us_state_long_names = ['Alabama', 'Alaska', 'Arizona', 'Arkansas', 'California', 'Colorado', 'Connecticut', 'Delaware', 'District of Columbia', 'Florida', 'Georgia', 'Hawaii', 'Idaho', 'Illinois', 'Indiana', 'Iowa', 'Kansas', 'Kentucky', 'Louisiana', 'Maine', 'Maryland', 'Massachusetts', 'Michigan', 'Minnesota', 'Mississippi', 'Missouri', 'Montana', 'Nebraska', 'Nevada', 'New Hampshire', 'New Jersey', 'New Mexico', 'New York', 'North Carolina', 'North Dakota', 'Ohio', 'Oklahoma', 'Oregon', 'Pennsylvania', 'Rhode Island', 'South Carolina', 'South Dakota', 'Tennessee', 'Texas', 'Utah', 'Vermont', 'Virginia', 'Washington', 'West Virginia', 'Wisconsin', 'Wyoming']

@@occupations = ['Software Developer', 'Cashiers', 'Waiter', 'Waitress', 'Customer service', 'Laborer', 'Carpenter', 'Landscaping', 'Janitor', 'Sales', 'Nurse', 'Medical assistant', 'Bodyshop Technician', 'Finance Director', 'HR Manager', 'Parts Person', 'Regional Manager', 'Sales Executive', 'Sales Manager', 'Manager', 'Receptionist', 'Technician', 'Used Car Sales', 'Website Administrator', 'Workshop Foreman']

end
