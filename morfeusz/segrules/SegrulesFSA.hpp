/* 
 * File:   SegrulesFSA.hpp
 * Author: mlenart
 *
 * Created on 12 marzec 2014, 17:52
 */

#ifndef SEGRULESFSA_HPP
#define	SEGRULESFSA_HPP

#include <set>
#include <iostream>
#include "deserialization/deserializationUtils.hpp"

namespace morfeusz {

struct SegrulesState {
    uint16_t offset;
    bool accepting;
    bool weak;
    bool shiftOrthFromPrevious;
    bool sink;
    bool failed;
    
    static SegrulesState FAILED_STATE;
};

inline bool operator<(const SegrulesState& s1, const SegrulesState& s2) {
    return s1.offset < s2.offset;
}

class SegrulesFSA {
public:

    SegrulesFSA(const unsigned char* ptr) : initialState(), ptr(ptr), initialTransitions() {
        SegrulesState state = {0, false, false, false, false, false};
        initialState = state;
        initialTransitions = createInitialTransitionsVector();
    }

    void proceedToNext(
            const unsigned char segnum,
            const SegrulesState& state,
            bool atEndOfWord,
            SegrulesState& resState) const;

    virtual ~SegrulesFSA() {
    }

    SegrulesState initialState;
private:
    const unsigned char* ptr;
    std::vector< SegrulesState > initialTransitions;

    SegrulesState transition2State(const unsigned char* transitionPtr) const;
    
    std::vector< SegrulesState > createInitialTransitionsVector();
    
    void doProceedFromInitialState(
            const unsigned char segnum,
            bool atEndOfWord,
            SegrulesState& resState) const;
    
    void doProceedFromNonInitialState(
            const unsigned char segnum,
            const SegrulesState& state,
            bool atEndOfWord,
            SegrulesState& resState) const;
};

}

#endif	/* SEGRULESFSA_HPP */

