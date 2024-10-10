$params = @{
  DnsName = "$env:COMPUTERNAME","$env:COMPUTERNAME.lab.net"
  KeyLength = 2048
  KeyFriendlyName = "SQLServerCert"
  KeyAlgorithm = 'RSA'
  HashAlgorithm = 'SHA256'
  KeyExportPolicy = 'Exportable'
  KeySpec = 'KeyExchange'
  NotAfter = (Get-date).AddYears(2)
  Provider = 'Microsoft RSA SChannel Cryptographic Provider'
  CertStoreLocation = 'Cert:\LocalMachine\My'
}
$Cert = New-SelfSignedCertificate @params