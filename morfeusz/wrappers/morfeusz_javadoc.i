%javamethodmodifiers morfeusz::Morfeusz::createInstance() "
    /**
     * Creates actual instance of Morfeusz class.
     * 
     * @return Morfeusz instance
     */
    public synchronized";

%javamethodmodifiers morfeusz::Morfeusz::getVersion() "
    /**
     * Returns a string containing library version.
     * @return library version string
     */
    public";

%javamethodmodifiers morfeusz::Morfeusz::analyseAsIterator(const char*) const "
    /**
     * Analyze given text and return the results as iterator.
     * It does not store results for whole text at once, so may be less memory-consuming for analysis of big texts.
     * 
     * NOT THREAD-SAFE (must have exclusive access to this instance).
     * 
     * @param text text for morphological analysis.
     * @return iterator over morphological analysis results
     */
    public";

%javamethodmodifiers morfeusz::Morfeusz::setAggl(const std::string&) "
    /**
     * Set aggl segmentation option value.
     * 
     * NOT THREAD-SAFE (must have exclusive access to this instance).
     * 
     * @param aggl aggl value
     */
    public";

%javamethodmodifiers morfeusz::Morfeusz::setPraet(const std::string&) "
    /**
     * Set praet segmentation option value.
     * 
     * NOT THREAD-SAFE (must have exclusive access to this instance).
     * 
     * @param praet praet value
     */
    public";

%javamethodmodifiers morfeusz::Morfeusz::setCaseHandling(CaseHandling) "
    /**
     * Set case handling.
     * 
     * NOT THREAD-SAFE (must have exclusive access to this instance).
     * 
     * @param caseHandling case handling policy
     */
    public";

%javamethodmodifiers morfeusz::Morfeusz::setTokenNumbering(TokenNumbering) "
    /**
     * Set token numbering policy.
     * 
     * NOT THREAD-SAFE (must have exclusive access to this instance).
     * 
     * @param numbering token numbering policy
     */
    public";

%javamethodmodifiers morfeusz::Morfeusz::setWhitespaceHandling(WhitespaceHandling) "
    /**
     * Set whitespace handling.
     * 
     * NOT THREAD-SAFE (must have exclusive access to this instance).
     * 
     * @param whitespaceHandling whitespace handling policy
     */
    public";