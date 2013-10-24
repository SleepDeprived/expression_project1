# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


User.delete_all
Collection.delete_all
Gal4Line.delete_all
ExpressionProfile.delete_all
Chromosome.delete_all
Stage.delete_all
Location.delete_all


u1 = User.create(first_name: "tom", last_name: "metzger", email: "metzgert@gmail.com" )

c1 = Collection.create(name: "main")

gal1 = Gal4Line.create(name: "A51-Gal4", p_element_backbone: "P{GawB}", regulatory_sequence: "enhancer trap")
gal2 = Gal4Line.create(name: "5053A-Gal4", p_element_backbone: "P{GawB}", regulatory_sequence: "enhancer trap")
gal3 = Gal4Line.create(name: "twist-Gal4", regulatory_sequence: "1.4kb HindIII ClaI fragment from twist genomic clone", gene: "twist", gene_symbol: "twi")
gal4 = Gal4Line.create(name: "dmef2-Gal4", gene: "myocyte enhancing factor 2", gene_symbol: "dmef2")

epA51 = ExpressionProfile.create(assessed_by: "IF/IHC for UAS-CD8-GFP")
ep5053 = ExpressionProfile.create(assessed_by: "IF/IHC for UAS-CD8-GFP")
epTwi1 = ExpressionProfile.create(assessed_by: "IF/IHC for UAS-LacZ")
epTwi2 = ExpressionProfile.create(assessed_by: "IF/IHC for UAS-LacZ")

ch1 = Chromosome.create(location: "X")
ch1L = Chromosome.create(location: "X- left arm")
ch1L = Chromosome.create(location: "X- right arm")
ch2 = Chromosome.create(location: "2")
ch2L = Chromosome.create(location: "2- left arm")
ch2L = Chromosome.create(location: "2- right arm")
ch3 = Chromosome.create(location: "3")
ch3L = Chromosome.create(location: "3- left arm")
ch3L = Chromosome.create(location: "3- right arm")
ch4 = Chromosome.create(location: "X")



stage1 = Stage.create(  name: "1",  time_range: "0 - 15 min AEL",       order: 1)
stage2 = Stage.create(  name: "2",  time_range: "15 - 70 min AEL",      order: 2)
stage3 = Stage.create(  name: "3",  time_range: "70 - 90 min AEL",      order: 3)
stage4 = Stage.create(  name: "4",  time_range: "90 - 130 min AEL",     order: 4)
stage5 = Stage.create(  name: "5",  time_range: "130 - 180 min AEL",    order: 5)
stage6 = Stage.create(  name: "6",  time_range: "180 - 195 min AEL",    order: 6)
stage7 = Stage.create(  name: "7",  time_range: "195- 200 min AEL",     order: 7)
stage8 = Stage.create(  name: "8",  time_range: "200 - 230 min AEL",    order: 8)
stage9 = Stage.create(  name: "9",  time_range: "230 - 260 min AEL",    order: 9)
stage10 = Stage.create( name: "10", time_range: "260 - 320 min AEL",    order: 10)
stage11 = Stage.create( name: "11", time_range: "320 - 440 min AEL",    order: 11)
stage12 = Stage.create( name: "12", time_range: "440 - 580 min AEL",    order: 12)
stage13 = Stage.create( name: "13", time_range: "560 - 620 min AEL",    order: 13)
stage14 = Stage.create( name: "14", time_range: "620 - 680 min AEL",    order: 14)
stage15 = Stage.create( name: "15", time_range: "680 - 800 min AEL",    order: 15)
stage16 = Stage.create( name: "16", time_range: "800 - 900 min AEL",    order: 16)
stage17 = Stage.create( name: "17", time_range: "15 - 22 hours AEL",    order: 17)
stageL1 = Stage.create( name: "L1", time_range: "24 - 49 hours AEL",    order: 18)
stageL2 = Stage.create( name: "L2", time_range: "49 - 72 hours AEL",    order: 19)
stageL3 = Stage.create( name: "L1", time_range: "3 - 5 days AEL",       order: 20)
stageP1 = Stage.create( name: "P1", time_range: "0 - 1 hours APF",      order: 21)
stageP2 = Stage.create( name: "P2", time_range: "1 - 3 hours APF",      order: 22)
stageP3 = Stage.create( name: "P3", time_range: "3 - 6.5 hours APF",    order: 23)
stageP4 = Stage.create( name: "P4", time_range: "6.5 - 12.5 hours APF", order: 24)
stageP5 = Stage.create( name: "P5", time_range: "12.5 - 25 hours APF",  order: 25)
stageP6 = Stage.create( name: "P6", time_range: "25 - 43 hours APF",    order: 26)
stageP7 = Stage.create( name: "P7", time_range: "43 - 47 hours APF",    order: 27)
stageP8 = Stage.create( name: "P8", time_range: "47 - 57 hours APF",    order: 28)
stageP9 = Stage.create( name: "P9", time_range: "57 - 69 hours APF",    order: 29)
stageP10 = Stage.create(name: "P10", time_range: "69 - 73 hours APF",   order: 30)
stageP11 = Stage.create(name: "P11", time_range: "73 - 78 hours APF",   order: 31)
stageP12 = Stage.create(name: "P12", time_range: "73 - 78 hours APF",   order: 32)
stageP13 = Stage.create(name: "P13", time_range: "78 - 87 hours APF",   order: 33)
stageP14 = Stage.create(name: "P14", time_range: "87 - 90 hours APF",   order: 34)
stageP15 = Stage.create(name: "P15", time_range: "90 - 103 hours APF",  order: 35)
adult = Stage.create(name: "Adult", time_range: ">103 hours APF",       order: 36)

loc1 = Location.create(name: "somatic muscle")
loc2 = Location.create(name: "muscle LO1")
loc3 = Location.create(name: "muscle SBM")
loc4 = Location.create(name: "muscle VT1")
loc5 = Location.create(name: "mesoderm")
loc6 = Location.create(name: "pericardial cells")
loc7 = Location.create(name: "muscle prgenitors")
loc8 = Location.create(name: "muscle VL1")



          # u1.collections << c1
          # c1.gal4_lines << gal1
          # c1.gal4_lines << gal2


ep5053.locations << loc1 << loc8
epA51.locations << loc1 << loc2 << loc3 << loc4
epTwi1.locations << loc5
epTwi2.locations << loc1 << loc6 << loc7

# ep5053.stages
# ep5053.stages

# epA51.stages
# epA51.stages

# epTwi1.stages (start stage6)
# epTwi1.stages (stop stage12)
# epTwi2.stages (start stage12)
# epTwi2.stages (stop stage16)



      # UNDEFINED METHOD ERROR
      # gal1.locations << loc1 << loc2 << loc3 << loc4
      # gal2.locations << loc1 << loc8
      # ep2.locations << loc5 << loc7
      # ep3.locations << loc7 << loc1

      # UNDEFINED METHOD ERROR - potentially just reverse order
      # gal1.expression_profiles << ep1
      # gal2.expression_profiles << ep1
      # gal3.expression_profiles << ep2 << ep3


      # UNDEFINED METHOD ERROR
      # gal1.chromosomes << ch3
      # gal2.chromosomes << ch3
      # gal3.chromosomes << ch2

      # how to add stages to the expression_profiles page and differentiate between start & end stages when stage_id comes from one table
      # stage13.expression_profiles << ep1


gal1.expression_profiles << epA51
# gal1.chromosome << ch3

gal2.expression_profiles << ep5053
# gal2.chromosome << ch3

gal3.expression_profiles << epTwi1 << epTwi2
# gal3.chromosome << ch2

# gal1.expression_profiles.first.locations << l1

# query to pull out location
# gal1.expression_profiles.first.locations.first



