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
  psychoses-elixhauser-primary-care-depress---primary:
    run: psychoses-elixhauser-primary-care-depress---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-i2b2/output
  psychoses-elixhauser-primary-care-affect---primary:
    run: psychoses-elixhauser-primary-care-affect---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: psychoses-elixhauser-primary-care-depress---primary/output
  nonorganic-psychoses-elixhauser-primary-care---primary:
    run: nonorganic-psychoses-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: psychoses-elixhauser-primary-care-affect---primary/output
  hysterical-psychoses-elixhauser-primary-care---primary:
    run: hysterical-psychoses-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: nonorganic-psychoses-elixhauser-primary-care---primary/output
  psychoses-elixhauser-primary-care-schizophrenifrm---primary:
    run: psychoses-elixhauser-primary-care-schizophrenifrm---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: hysterical-psychoses-elixhauser-primary-care---primary/output
  psychoses-elixhauser-primary-care-psychosis---primary:
    run: psychoses-elixhauser-primary-care-psychosis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: psychoses-elixhauser-primary-care-schizophrenifrm---primary/output
  psychoses-elixhauser-primary-care-remiss---primary:
    run: psychoses-elixhauser-primary-care-remiss---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: psychoses-elixhauser-primary-care-psychosis---primary/output
  psychoses-elixhauser-primary-care-specified---primary:
    run: psychoses-elixhauser-primary-care-specified---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: psychoses-elixhauser-primary-care-remiss---primary/output
  antipsychotic-psychoses-elixhauser-primary-care---primary:
    run: antipsychotic-psychoses-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: psychoses-elixhauser-primary-care-specified---primary/output
  hypomanic-psychoses-elixhauser-primary-care---primary:
    run: hypomanic-psychoses-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: antipsychotic-psychoses-elixhauser-primary-care---primary/output
  psychoses-elixhauser-primary-care-lithium---primary:
    run: psychoses-elixhauser-primary-care-lithium---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: hypomanic-psychoses-elixhauser-primary-care---primary/output
  current-psychoses-elixhauser-primary-care---primary:
    run: current-psychoses-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: psychoses-elixhauser-primary-care-lithium---primary/output
  brief-psychoses-elixhauser-primary-care---primary:
    run: brief-psychoses-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: current-psychoses-elixhauser-primary-care---primary/output
  psychoses-elixhauser-primary-care---primary:
    run: psychoses-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: brief-psychoses-elixhauser-primary-care---primary/output
  reactive-psychoses-elixhauser-primary-care---primary:
    run: reactive-psychoses-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: psychoses-elixhauser-primary-care---primary/output
  psychoses-elixhauser-primary-care-schizotypal---primary:
    run: psychoses-elixhauser-primary-care-schizotypal---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: reactive-psychoses-elixhauser-primary-care---primary/output
  delusional-psychoses-elixhauser-primary-care---primary:
    run: delusional-psychoses-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: psychoses-elixhauser-primary-care-schizotypal---primary/output
  paranoid-psychoses-elixhauser-primary-care---primary:
    run: paranoid-psychoses-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: delusional-psychoses-elixhauser-primary-care---primary/output
  psychoses-elixhauser-primary-care-presenile---primary:
    run: psychoses-elixhauser-primary-care-presenile---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: paranoid-psychoses-elixhauser-primary-care---primary/output
  disintegrative-psychoses-elixhauser-primary-care---primary:
    run: disintegrative-psychoses-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: psychoses-elixhauser-primary-care-presenile---primary/output
  moderate-psychoses-elixhauser-primary-care---primary:
    run: moderate-psychoses-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: disintegrative-psychoses-elixhauser-primary-care---primary/output
  transient-psychoses-elixhauser-primary-care---primary:
    run: transient-psychoses-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: moderate-psychoses-elixhauser-primary-care---primary/output
  personal-psychoses-elixhauser-primary-care---primary:
    run: personal-psychoses-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: transient-psychoses-elixhauser-primary-care---primary/output
  alcoholic-psychoses-elixhauser-primary-care---primary:
    run: alcoholic-psychoses-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: personal-psychoses-elixhauser-primary-care---primary/output
  residual-psychoses-elixhauser-primary-care---primary:
    run: residual-psychoses-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: alcoholic-psychoses-elixhauser-primary-care---primary/output
  other-psychoses-elixhauser-primary-care---primary:
    run: other-psychoses-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: residual-psychoses-elixhauser-primary-care---primary/output
  acute-psychoses-elixhauser-primary-care---primary:
    run: acute-psychoses-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: other-psychoses-elixhauser-primary-care---primary/output
  psychogenic-psychoses-elixhauser-primary-care---primary:
    run: psychogenic-psychoses-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: acute-psychoses-elixhauser-primary-care---primary/output
  bipolar-psychoses-elixhauser-primary-care---primary:
    run: bipolar-psychoses-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: psychogenic-psychoses-elixhauser-primary-care---primary/output
  psychoses-elixhauser-primary-care-state---primary:
    run: psychoses-elixhauser-primary-care-state---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: bipolar-psychoses-elixhauser-primary-care---primary/output
  psychoses-elixhauser-primary-care-child---primary:
    run: psychoses-elixhauser-primary-care-child---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule32
      potentialCases:
        id: potentialCases
        source: psychoses-elixhauser-primary-care-state---primary/output
  psychoses-elixhauser-primary-care-korsakov---primary:
    run: psychoses-elixhauser-primary-care-korsakov---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule33
      potentialCases:
        id: potentialCases
        source: psychoses-elixhauser-primary-care-child---primary/output
  catatonic-psychoses-elixhauser-primary-care---primary:
    run: catatonic-psychoses-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule34
      potentialCases:
        id: potentialCases
        source: psychoses-elixhauser-primary-care-korsakov---primary/output
  psychoses-elixhauser-primary-care-mania---primary:
    run: psychoses-elixhauser-primary-care-mania---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule35
      potentialCases:
        id: potentialCases
        source: catatonic-psychoses-elixhauser-primary-care---primary/output
  psychoses-elixhauser-primary-care-medication---primary:
    run: psychoses-elixhauser-primary-care-medication---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule36
      potentialCases:
        id: potentialCases
        source: psychoses-elixhauser-primary-care-mania---primary/output
  cycloid-psychoses-elixhauser-primary-care---primary:
    run: cycloid-psychoses-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule37
      potentialCases:
        id: potentialCases
        source: psychoses-elixhauser-primary-care-medication---primary/output
  psychoses-elixhauser-primary-care-persecution---primary:
    run: psychoses-elixhauser-primary-care-persecution---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule38
      potentialCases:
        id: potentialCases
        source: cycloid-psychoses-elixhauser-primary-care---primary/output
  psychoses-elixhauser-primary-care-resolved---primary:
    run: psychoses-elixhauser-primary-care-resolved---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule39
      potentialCases:
        id: potentialCases
        source: psychoses-elixhauser-primary-care-persecution---primary/output
  psychoses-elixhauser-primary-care-history---primary:
    run: psychoses-elixhauser-primary-care-history---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule40
      potentialCases:
        id: potentialCases
        source: psychoses-elixhauser-primary-care-resolved---primary/output
  psychoses-elixhauser-primary-care-disordr---primary:
    run: psychoses-elixhauser-primary-care-disordr---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule41
      potentialCases:
        id: potentialCases
        source: psychoses-elixhauser-primary-care-history---primary/output
  psychoses-elixhauser-primary-care-reaction---primary:
    run: psychoses-elixhauser-primary-care-reaction---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule42
      potentialCases:
        id: potentialCases
        source: psychoses-elixhauser-primary-care-disordr---primary/output
  subchronic-psychoses-elixhauser-primary-care---primary:
    run: subchronic-psychoses-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule43
      potentialCases:
        id: potentialCases
        source: psychoses-elixhauser-primary-care-reaction---primary/output
  psychoses-elixhauser-primary-care-insight---primary:
    run: psychoses-elixhauser-primary-care-insight---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule44
      potentialCases:
        id: potentialCases
        source: subchronic-psychoses-elixhauser-primary-care---primary/output
  psychoses-elixhauser-primary-care-schizophrenialike---primary:
    run: psychoses-elixhauser-primary-care-schizophrenialike---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule45
      potentialCases:
        id: potentialCases
        source: psychoses-elixhauser-primary-care-insight---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule46
      potentialCases:
        id: potentialCases
        source: psychoses-elixhauser-primary-care-schizophrenialike---primary/output
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
  inputModule34:
    id: inputModule34
    doc: Python implementation unit
    type: File
  inputModule35:
    id: inputModule35
    doc: Python implementation unit
    type: File
  inputModule36:
    id: inputModule36
    doc: Python implementation unit
    type: File
  inputModule37:
    id: inputModule37
    doc: Python implementation unit
    type: File
  inputModule38:
    id: inputModule38
    doc: Python implementation unit
    type: File
  inputModule39:
    id: inputModule39
    doc: Python implementation unit
    type: File
  inputModule40:
    id: inputModule40
    doc: Python implementation unit
    type: File
  inputModule41:
    id: inputModule41
    doc: Python implementation unit
    type: File
  inputModule42:
    id: inputModule42
    doc: Python implementation unit
    type: File
  inputModule43:
    id: inputModule43
    doc: Python implementation unit
    type: File
  inputModule44:
    id: inputModule44
    doc: Python implementation unit
    type: File
  inputModule45:
    id: inputModule45
    doc: Python implementation unit
    type: File
  inputModule46:
    id: inputModule46
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
