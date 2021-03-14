
#
#
#
el_eta_bins = [-2.5,-2.0,-1.566,-1.4442, -0.8, 0.0, 0.8, 1.4442, 1.566, 2.0, 2.5]

#
#
#
# el_pt_bins = [50, 60, 70, 80, 90, 100, 110, 120, 130, 140, 150, 160, 180, 200, 220, 250, 300, 500]
el_pt_bins = [80, 90, 100, 110, 120, 140, 160, 180, 200, 225, 250, 500]

#
#
#
cutBaseCommon = "abs(tag_sc_eta) < 2.5 && el_q*tag_Ele_q < 0 && pair_mass > 60 && pair_mass < 130 && (passingCutBasedTight94XV2==1)"