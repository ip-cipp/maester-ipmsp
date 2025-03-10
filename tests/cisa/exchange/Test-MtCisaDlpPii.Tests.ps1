Describe "CISA SCuBA" -Tag "MS.EXO", "MS.EXO.8.2", "CISA", "Security", "All" {
    It "MS.EXO.08.2: The DLP solution SHALL protect personally identifiable information (PII) and sensitive information, as defined by the agency." {

        $cisaDlpPii = Test-MtCisaDlpPii

        if ($null -ne $cisaDlpPii) {
            $cisaDlpPii | Should -Be $true -Because "DLP protects sensitive information."
        }
    }
}