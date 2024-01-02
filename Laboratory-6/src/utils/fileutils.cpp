#include "fileutils.hpp"

char* read_source(const std::string& path)
{
    // Calculate size of the file
    FILE *fileHandler = fopen(path.c_str(), "r");
    fseek(fileHandler, 0, SEEK_END);
    size_t fileSize = ftell(fileHandler);
    rewind(fileHandler);
    // read kernel source into buffer
    char *sourceCode = (char *)malloc(fileSize + 1);
    sourceCode[fileSize] = '\0';
    fread(sourceCode, sizeof(char), fileSize, fileHandler);
    fclose(fileHandler);

    return sourceCode;
}