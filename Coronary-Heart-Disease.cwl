cwlVersion: v1.0
steps:
  read-potential-cases-i2b2:
    run: read-potential-cases-i2b2.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  coronary-heart-disease-chd-angina---primary:
    run: coronary-heart-disease-chd-angina---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-i2b2/output
  coronary-heart-disease-chd-control---primary:
    run: coronary-heart-disease-chd-control---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: coronary-heart-disease-chd-angina---primary/output
  coronary-heart-disease-chd-worsening---primary:
    run: coronary-heart-disease-chd-worsening---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: coronary-heart-disease-chd-control---primary/output
  coronary-heart-disease-chd-monitoring---primary:
    run: coronary-heart-disease-chd-monitoring---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: coronary-heart-disease-chd-worsening---primary/output
  coronary-heart-disease-chd-review---primary:
    run: coronary-heart-disease-chd-review---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: coronary-heart-disease-chd-monitoring---primary/output
  coronary-heart-disease-chd---primary:
    run: coronary-heart-disease-chd---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: coronary-heart-disease-chd-review---primary/output
  coronary-heart-disease-chd-ischaemia---primary:
    run: coronary-heart-disease-chd-ischaemia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: coronary-heart-disease-chd---primary/output
  atherosclerotic-coronary-heart-disease-chd---primary:
    run: atherosclerotic-coronary-heart-disease-chd---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: coronary-heart-disease-chd-ischaemia---primary/output
  myocardal-coronary-heart-disease-chd---primary:
    run: myocardal-coronary-heart-disease-chd---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: atherosclerotic-coronary-heart-disease-chd---primary/output
  coronary-heart-disease-chd-attack---primary:
    run: coronary-heart-disease-chd-attack---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: myocardal-coronary-heart-disease-chd---primary/output
  coronary-heart-disease-chd-thrombosis---primary:
    run: coronary-heart-disease-chd-thrombosis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: coronary-heart-disease-chd-attack---primary/output
  coronary-heart-disease-chd-ruptur---primary:
    run: coronary-heart-disease-chd-ruptur---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: coronary-heart-disease-chd-thrombosis---primary/output
  coronary-heart-disease-chd-preinfarction---primary:
    run: coronary-heart-disease-chd-preinfarction---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: coronary-heart-disease-chd-ruptur---primary/output
  coronary-heart-disease-chd-subacute---primary:
    run: coronary-heart-disease-chd-subacute---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: coronary-heart-disease-chd-preinfarction---primary/output
  coronary-heart-disease-chd-dressler's---primary:
    run: coronary-heart-disease-chd-dressler's---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: coronary-heart-disease-chd-subacute---primary/output
  unstable-coronary-heart-disease-chd---primary:
    run: unstable-coronary-heart-disease-chd---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: coronary-heart-disease-chd-dressler's---primary/output
  coronary-heart-disease-chd-insufficiency---primary:
    run: coronary-heart-disease-chd-insufficiency---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: unstable-coronary-heart-disease-chd---primary/output
  coronary-heart-disease-chd-infarct---primary:
    run: coronary-heart-disease-chd-infarct---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: coronary-heart-disease-chd-insufficiency---primary/output
  subendocardial-coronary-heart-disease-chd---primary:
    run: subendocardial-coronary-heart-disease-chd---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: coronary-heart-disease-chd-infarct---primary/output
  coronary-heart-disease-chd-pectoris---primary:
    run: coronary-heart-disease-chd-pectoris---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: subendocardial-coronary-heart-disease-chd---primary/output
  coronary-heart-disease-chd-decubitus---primary:
    run: coronary-heart-disease-chd-decubitus---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: coronary-heart-disease-chd-pectoris---primary/output
  coronary-heart-disease-chd-artery---primary:
    run: coronary-heart-disease-chd-artery---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: coronary-heart-disease-chd-decubitus---primary/output
  coronary-heart-disease-chd-anginosus---primary:
    run: coronary-heart-disease-chd-anginosus---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: coronary-heart-disease-chd-artery---primary/output
  coronary-heart-disease-chd-stenocardia---primary:
    run: coronary-heart-disease-chd-stenocardia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: coronary-heart-disease-chd-anginosus---primary/output
  coronary-heart-disease-chd-vessel---primary:
    run: coronary-heart-disease-chd-vessel---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: coronary-heart-disease-chd-stenocardia---primary/output
  current-coronary-heart-disease-chd---primary:
    run: current-coronary-heart-disease-chd---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: coronary-heart-disease-chd-vessel---primary/output
  coronary-heart-disease-chd-forms---primary:
    run: coronary-heart-disease-chd-forms---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: current-coronary-heart-disease-chd---primary/output
  ischaemic-coronary-heart-disease-chd---primary:
    run: ischaemic-coronary-heart-disease-chd---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: coronary-heart-disease-chd-forms---primary/output
  coronary-heart-disease-chd-hypertension---primary:
    run: coronary-heart-disease-chd-hypertension---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: ischaemic-coronary-heart-disease-chd---primary/output
  asymptomatic-coronary-heart-disease-chd---primary:
    run: asymptomatic-coronary-heart-disease-chd---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: coronary-heart-disease-chd-hypertension---primary/output
  coronary-heart-disease-chd-effort---primary:
    run: coronary-heart-disease-chd-effort---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule32
      potentialCases:
        id: potentialCases
        source: asymptomatic-coronary-heart-disease-chd---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule33
      potentialCases:
        id: potentialCases
        source: coronary-heart-disease-chd-effort---primary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
  inputModule28:
    id: inputModule28
    doc: Python implementation unit
    type: File
  inputModule29:
    id: inputModule29
    doc: Python implementation unit
    type: File
  inputModule30:
    id: inputModule30
    doc: Python implementation unit
    type: File
  inputModule31:
    id: inputModule31
    doc: Python implementation unit
    type: File
  inputModule32:
    id: inputModule32
    doc: Python implementation unit
    type: File
  inputModule33:
    id: inputModule33
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
