library(AzureStor)

# conexao com o storage ---------------------------------------------------
storage_account_name = "storageaccountcsapp9d08"
region = "Sul do Brasil"
key = Sys.getenv('STORAGE_ACCOUNT_KEY')
blob_con = blob_endpoint(
  endpoint = glue::glue("https://{storage_account_name}.blob.core.windows.net/"),
  key = key
)

# criacao/conexao com o blob container ------------------------------------
list_storage_containers(blob_con)

container_client = tryCatch(
  expr = {
    create_blob_container(blob_con, name = "data")
  },
  error = function(e) {
    blob_container(blob_con, name = "data")
  }
)

list_blobs(container_client)

# upload de arquivos no blob container ------------------------------------

storage_upload(container_client,  "data/auto.xlsx", "auto.xlsx")

# download de um arquivo do blob container --------------------------------
storage_download(container_client,  "auto.xlsx", "data/auto.xlsx", overwrite = TRUE)
library(readxl)
auto = read_excel("data/auto.xlsx")
