const char *colorname[] = {

  /* 8 normal colors */
  [0] = "#98c379", /* black   */
  [1] = "#e5C07b", /* red     */
  [2] = "#e06c75", /* green   */
  [3] = "#98c379", /* yellow  */
  [4] = "#61afef", /* blue    */
  [5] = "#56b6c2", /* magenta */
  [6] = "#c678dd", /* cyan    */
  [7] = "#98c379", /* white   */

  /* 8 bright colors */
  [8]  = "#e5c07b",  /* black   */
  [9]  = "#e5c07b",  /* red     */
  [10] = "#e06c75", /* green   */
  [11] = "#61afef", /* yellow  */
  [12] = "#abb2bf", /* blue    */
  [13] = "#61afef", /* magenta */
  [14] = "#abb2bf", /* cyan    */
  [15] = "#e06c75", /* white   */

  /* special colors */
  [256] = "#282c34", /* background */
  [257] = "#f0f2f4", /* foreground */
  [258] = "#f0f2f4",     /* cursor */
};

/* Default colors (colorname index)
 * foreground, background, cursor */
 unsigned int defaultbg = 0;
 unsigned int defaultfg = 257;
 unsigned int defaultcs = 258;
 unsigned int defaultrcs= 258;
