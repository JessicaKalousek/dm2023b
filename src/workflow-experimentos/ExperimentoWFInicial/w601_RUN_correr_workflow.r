# Corrida general del workflow

options(error = function() {
  traceback(20)
  options(error = NULL)
  stop("exiting after script error")
})


# corrida de cada paso del workflow
#\dm2023b\src\workflow-experimentos\ExperimentoWFInicial

# primeros pasos, relativamente rapidos
source("~/dm2023b/src/workflow-experimentos/ExperimentoWFInicial/w611_CA_reparar_dataset.r")
source("~/dm2023b/src/workflow-experimentos/ExperimentoWFInicial/w621_DR_corregir_drifting.r")
source("~/dm2023b/src/workflow-experimentos/ExperimentoWFInicial/w631_FE_historia.r")
source("~/dm2023b/src/workflow-experimentos/ExperimentoWFInicial/w641_TS_training_strategy.r")

# ultimos pasos, muy lentos
source("~/dm2023b/src/workflow-experimentos/ExperimentoWFInicial/w651_HT_lightgbm.r")
source("~/dm2023b/src/workflow-experimentos/ExperimentoWFInicial/w661_ZZ_final.r")
