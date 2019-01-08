/*! \file dmesg.h
  \brief Kernel debug message buffer.
*/

#define DMESGLEN 2048

//! Ought to be 0xdeadbeef except after power loss.
extern uint32_t dmesg_magic;
//! Index within that buffer.
extern uint16_t dmesg_index;


//! Clears the dmesg buffer.
void dmesg_clear();

//! I ain't never initialized a buffer that didn't need initializin'.
void dmesg_init();


