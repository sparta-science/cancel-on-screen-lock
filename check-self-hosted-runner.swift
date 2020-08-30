#!/usr/bin/swift

import Quartz

func checkIfScreenIsLocked() {
    if let session = CGSessionCopyCurrentDictionary() as NSDictionary? {
        print(session)
        if let locked = session["CGSSessionScreenIsLocked"] {
            print("screen locked: ", locked)
            print("::warning ::Not ready to run as screen is locked")
            print("::set-output name=screen-locked::true")
        } else {
            print("::set-output name=screen-locked::false")
        }
    }
    print("::set-output name=screen-locked::true")
}

checkIfScreenIsLocked()
