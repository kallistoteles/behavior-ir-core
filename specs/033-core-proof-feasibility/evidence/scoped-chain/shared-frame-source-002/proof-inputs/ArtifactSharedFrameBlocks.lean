import ArtifactSharedFrameFooter
import ArtifactSharedFrameHeader
import ArtifactSharedFrameGroup0
import ArtifactSharedFrameGroup1
import ArtifactSharedFrameGroup2
import ArtifactSharedFrameGroup3
import ArtifactSharedFrameGroup4
import ArtifactSharedFrameGroup5
import ArtifactSharedFrameGroup6
import ArtifactSharedFrameGroup7
import ArtifactSharedFrameGroup8
import ArtifactSharedFrameGroup9
import ArtifactSharedFrameGroup10
import ArtifactSharedFrameGroup11
import ArtifactSharedFrameGroup12
import ArtifactSharedFrameGroup13
import ArtifactSharedFrameGroup14
import ArtifactSharedFrameGroup15
import ArtifactSharedFrameGroup16
import ArtifactSharedFrameGroup17
import ArtifactSharedFrameGroup18
import ArtifactSharedFrameGroup19
import ArtifactSharedFrameGroup20
import ArtifactSharedFrameGroup21
import ArtifactSharedFrameGroup22
import ArtifactSharedFrameGroup23
import ArtifactSharedFrameGroup24
import ArtifactSharedFrameGroup25
import ArtifactSharedFrameGroup26
import ArtifactSharedFrameGroup27
import ArtifactSharedFrameGroup28
import ArtifactSharedFrameGroup29
import ArtifactSharedFrameGroup30
import ArtifactSharedFrameGroup31
import ArtifactSharedFrameGroup32
import ArtifactSharedFrameGroup33
import ArtifactSharedFrameGroup34
import ArtifactSharedFrameGroup35
import ArtifactSharedFrameGroup36
import ArtifactSharedFrameGroup37
import ArtifactSharedFrameGroup38
import ArtifactSharedFrameGroup39
import ArtifactSharedFrameGroup40
import ArtifactSharedFrameGroup41
import ArtifactSharedFrameGroup42
import ArtifactSharedFrameGroup43
import ArtifactSharedFrameGroup44
import ArtifactSharedFrameGroup45
import ArtifactSharedFrameGroup46
import ArtifactSharedFrameGroup47
import ArtifactSharedFrameGroup48
import ArtifactSharedFrameGroup49
import ArtifactSharedFrameGroup50
import ArtifactSharedFrameGroup51
import ArtifactSharedFrameGroup52
import ArtifactSharedFrameGroup53
import ArtifactSharedFrameGroup54
import ArtifactSharedFrameGroup55
import ArtifactSharedFrameGroup56
import ArtifactSharedFrameGroup57
import ArtifactSharedFrameGroup58
import ArtifactSharedFrameGroup59
namespace ArtifactSharedFrameBlocks
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def partOps0 : List WordIR.Op := [.literal (BitVec.ofNat 32 1),.badd 2 43,.bnot 2,.literal (BitVec.ofNat 32 255),.band 45 46,.shr 2 8,.literal (BitVec.ofNat 32 0),.bnot 49,.band 48 50,.bxor 48 50,.badd 48 50,.bnot 53,.band 52 54,.bxor 51 55,.shr 56 31,.bxor 57 43,.literal (BitVec.ofNat 32 256),.bxor 2 59,.band 60 50,.bxor 60 50,.badd 60 50,.bnot 63,.band 62 64,.bxor 61 65,.shr 66 31,.bxor 67 43,.bnot 59,.band 2 69,.bxor 2 69,.badd 2 69,.bnot 72,.band 71 73,.bxor 70 74,.shr 75 31,.bxor 76 43,.shr 47 5,.bnot 47,.literal (BitVec.ofNat 32 31),.band 79 80,.shr 47 8,.band 82 50,.bxor 82 50,.badd 82 50,.bnot 85,.band 84 86,.bxor 83 87,.shr 88 31,.bxor 89 43,.shr 78 2,.band 91 43,.bnot 92,.badd 93 43,.shr 78 1,.band 95 43,.bnot 96,.badd 97 43,.shr 78 0,.band 99 43,.bnot 100,.badd 101 43,.band 102 10,.bnot 102,.band 104 9,.bxor 103 105]
theorem partPartition0 : partOps0=ArtifactSharedFrameGroup0.partOps := rfl
theorem partChecked0 : ArtifactSharedFrameGroup0.partBytes=statementBytes 43 (partOps0.map lower) := by
  rw [partPartition0]
  exact ArtifactSharedFrameGroup0.partChecked
theorem partLength0 : partOps0.length=64 := rfl
def partOps1 : List WordIR.Op := [.band 98 106,.bnot 98,.band 102 8,.band 104 7,.bxor 109 110,.band 108 111,.bxor 107 112,.band 94 113,.bnot 94,.band 102 6,.band 104 5,.bxor 116 117,.band 98 118,.band 102 4,.band 104 3,.bxor 120 121,.band 108 122,.bxor 119 123,.band 115 124,.bxor 114 125,.shr 78 3,.band 127 50,.bxor 127 50,.badd 127 50,.bnot 130,.band 129 131,.bxor 128 132,.shr 133 31,.bxor 134 43,.shr 81 0,.band 136 43,.bnot 137,.badd 138 43,.shr 126 1,.band 139 140,.bnot 139,.band 142 126,.bxor 141 143,.shr 81 1,.band 145 43,.bnot 146,.badd 147 43,.shr 144 2,.band 148 149,.bnot 148,.band 151 144,.bxor 150 152,.shr 81 2,.band 154 43,.bnot 155,.badd 156 43,.shr 153 4,.band 157 158,.bnot 157,.band 160 153,.bxor 159 161,.shr 81 3,.band 163 43,.bnot 164,.badd 165 43,.shr 162 8,.band 166 167,.bnot 166,.band 169 162]
theorem partPartition1 : partOps1=ArtifactSharedFrameGroup1.partOps := rfl
theorem partChecked1 : ArtifactSharedFrameGroup1.partBytes=statementBytes 107 (partOps1.map lower) := by
  rw [partPartition1]
  exact ArtifactSharedFrameGroup1.partChecked
theorem partLength1 : partOps1.length=64 := rfl
def partOps2 : List WordIR.Op := [.bxor 168 170,.shr 81 4,.band 172 43,.bnot 173,.badd 174 43,.shr 171 16,.band 175 176,.bnot 175,.band 178 171,.bxor 177 179,.shr 81 5,.band 181 50,.bxor 181 50,.badd 181 50,.bnot 184,.band 183 185,.bxor 182 186,.shr 187 31,.bxor 188 43,.shr 180 0,.band 190 43,.bnot 191,.badd 192 43,.band 193 19,.bnot 193,.band 195 11,.bxor 194 196,.band 193 20,.band 195 12,.bxor 198 199,.band 193 21,.band 195 13,.bxor 201 202,.band 193 22,.band 195 14,.bxor 204 205,.band 193 23,.band 195 15,.bxor 207 208,.band 193 24,.band 195 16,.bxor 210 211,.band 193 25,.band 195 17,.bxor 213 214,.band 193 26,.band 195 18,.bxor 216 217,.band 193 29,.band 195 27,.bxor 219 220,.band 193 30,.band 195 28,.bxor 222 223,.band 193 32,.band 195 31,.bxor 225 226,.band 193 34,.band 195 33,.bxor 228 229,.band 193 11,.band 195 19,.bxor 231 232,.band 193 12]
theorem partPartition2 : partOps2=ArtifactSharedFrameGroup2.partOps := rfl
theorem partChecked2 : ArtifactSharedFrameGroup2.partBytes=statementBytes 171 (partOps2.map lower) := by
  rw [partPartition2]
  exact ArtifactSharedFrameGroup2.partChecked
theorem partLength2 : partOps2.length=64 := rfl
def partOps3 : List WordIR.Op := [.band 195 20,.bxor 234 235,.band 193 13,.band 195 21,.bxor 237 238,.band 193 14,.band 195 22,.bxor 240 241,.band 193 15,.band 195 23,.bxor 243 244,.band 193 16,.band 195 24,.bxor 246 247,.band 193 17,.band 195 25,.bxor 249 250,.band 193 18,.band 195 26,.bxor 252 253,.band 193 27,.band 195 29,.bxor 255 256,.band 193 28,.band 195 30,.bxor 258 259,.band 193 31,.band 195 32,.bxor 261 262,.band 193 33,.band 195 34,.bxor 264 265,.shr 191 1,.band 267 50,.bxor 267 50,.badd 267 50,.bnot 270,.band 269 271,.bxor 268 272,.shr 273 31,.bxor 274 43,.badd 221 257,.badd 224 260,.band 221 257,.bxor 221 257,.bnot 276,.band 279 280,.bxor 278 281,.shr 282 31,.badd 277 283,.band 224 50,.bxor 224 50,.badd 224 50,.bnot 287,.band 286 288,.bxor 285 289,.shr 290 31,.bxor 291 43,.literal (BitVec.ofNat 32 1048576),.bnot 293,.band 221 294,.bxor 221 294,.badd 221 294,.bnot 297]
theorem partPartition3 : partOps3=ArtifactSharedFrameGroup3.partOps := rfl
theorem partChecked3 : ArtifactSharedFrameGroup3.partBytes=statementBytes 235 (partOps3.map lower) := by
  rw [partPartition3]
  exact ArtifactSharedFrameGroup3.partChecked
theorem partLength3 : partOps3.length=64 := rfl
def partOps4 : List WordIR.Op := [.band 296 298,.bxor 295 299,.shr 300 31,.bxor 301 43,.band 292 302,.band 260 50,.bxor 260 50,.badd 260 50,.bnot 306,.band 305 307,.bxor 304 308,.shr 309 31,.bxor 310 43,.band 257 294,.bxor 257 294,.badd 257 294,.bnot 314,.band 313 315,.bxor 312 316,.shr 317 31,.bxor 318 43,.band 311 319,.band 303 320,.band 284 50,.bxor 284 50,.badd 284 50,.bnot 324,.band 323 325,.bxor 322 326,.shr 327 31,.bxor 328 43,.band 276 294,.bxor 276 294,.badd 276 294,.bnot 332,.band 331 333,.bxor 330 334,.shr 335 31,.bxor 336 43,.band 329 337,.band 321 338,.band 227 263,.band 230 266,.shr 227 1,.band 342 50,.bxor 342 50,.badd 342 50,.bnot 345,.band 344 346,.bxor 343 347,.shr 348 31,.bxor 349 43,.shr 263 1,.band 351 50,.bxor 351 50,.badd 351 50,.bnot 354,.band 353 355,.bxor 352 356,.shr 357 31,.bxor 358 43,.shr 230 1,.band 360 50,.bxor 360 50]
theorem partPartition4 : partOps4=ArtifactSharedFrameGroup4.partOps := rfl
theorem partChecked4 : ArtifactSharedFrameGroup4.partBytes=statementBytes 299 (partOps4.map lower) := by
  rw [partPartition4]
  exact ArtifactSharedFrameGroup4.partChecked
theorem partLength4 : partOps4.length=64 := rfl
def partOps5 : List WordIR.Op := [.badd 360 50,.bnot 363,.band 362 364,.bxor 361 365,.shr 366 31,.bxor 367 43,.shr 266 1,.band 369 50,.bxor 369 50,.badd 369 50,.bnot 372,.band 371 373,.bxor 370 374,.shr 375 31,.bxor 376 43,.literal (BitVec.ofNat 32 99),.literal (BitVec.ofNat 32 111),.literal (BitVec.ofNat 32 114),.literal (BitVec.ofNat 32 101),.literal (BitVec.ofNat 32 48),.literal (BitVec.ofNat 32 51),.literal (BitVec.ofNat 32 46),.literal (BitVec.ofNat 32 115),.literal (BitVec.ofNat 32 109),.literal (BitVec.ofNat 32 97),.literal (BitVec.ofNat 32 110),.literal (BitVec.ofNat 32 116),.literal (BitVec.ofNat 32 105),.literal (BitVec.ofNat 32 118),.literal (BitVec.ofNat 32 49),.literal (BitVec.ofNat 32 81),.shr 1 0,.band 394 46,.shr 47 0,.band 396 46,.band 82 46,.shr 197 0,.band 399 46,.shr 197 8,.band 401 46,.shr 197 16,.band 403 46,.shr 197 24,.band 405 46,.shr 200 0,.band 407 46,.shr 200 8,.band 409 46,.shr 200 16,.band 411 46,.shr 200 24,.band 413 46,.shr 203 0,.band 415 46,.shr 203 8,.band 417 46,.shr 203 16,.band 419 46,.shr 203 24,.band 421 46,.shr 206 0,.band 423 46,.shr 206 8,.band 425 46]
theorem partPartition5 : partOps5=ArtifactSharedFrameGroup5.partOps := rfl
theorem partChecked5 : ArtifactSharedFrameGroup5.partBytes=statementBytes 363 (partOps5.map lower) := by
  rw [partPartition5]
  exact ArtifactSharedFrameGroup5.partChecked
theorem partLength5 : partOps5.length=64 := rfl
def partOps6 : List WordIR.Op := [.shr 206 16,.band 427 46,.shr 206 24,.band 429 46,.shr 209 0,.band 431 46,.shr 209 8,.band 433 46,.shr 209 16,.band 435 46,.shr 209 24,.band 437 46,.shr 212 0,.band 439 46,.shr 212 8,.band 441 46,.shr 212 16,.band 443 46,.shr 212 24,.band 445 46,.shr 215 0,.band 447 46,.shr 215 8,.band 449 46,.shr 215 16,.band 451 46,.shr 215 24,.band 453 46,.shr 218 0,.band 455 46,.shr 218 8,.band 457 46,.shr 218 16,.band 459 46,.shr 218 24,.band 461 46,.shr 233 0,.band 463 46,.shr 233 8,.band 465 46,.shr 233 16,.band 467 46,.shr 233 24,.band 469 46,.shr 236 0,.band 471 46,.shr 236 8,.band 473 46,.shr 236 16,.band 475 46,.shr 236 24,.band 477 46,.shr 239 0,.band 479 46,.shr 239 8,.band 481 46,.shr 239 16,.band 483 46,.shr 239 24,.band 485 46,.shr 242 0,.band 487 46,.shr 242 8,.band 489 46]
theorem partPartition6 : partOps6=ArtifactSharedFrameGroup6.partOps := rfl
theorem partChecked6 : ArtifactSharedFrameGroup6.partBytes=statementBytes 427 (partOps6.map lower) := by
  rw [partPartition6]
  exact ArtifactSharedFrameGroup6.partChecked
theorem partLength6 : partOps6.length=64 := rfl
def partOps7 : List WordIR.Op := [.shr 242 16,.band 491 46,.shr 242 24,.band 493 46,.shr 245 0,.band 495 46,.shr 245 8,.band 497 46,.shr 245 16,.band 499 46,.shr 245 24,.band 501 46,.shr 248 0,.band 503 46,.shr 248 8,.band 505 46,.shr 248 16,.band 507 46,.shr 248 24,.band 509 46,.shr 251 0,.band 511 46,.shr 251 8,.band 513 46,.shr 251 16,.band 515 46,.shr 251 24,.band 517 46,.shr 254 0,.band 519 46,.shr 254 8,.band 521 46,.shr 254 16,.band 523 46,.shr 254 24,.band 525 46,.shr 221 0,.band 527 46,.shr 221 8,.band 529 46,.shr 221 16,.band 531 46,.shr 221 24,.band 533 46,.shr 224 0,.band 535 46,.shr 224 8,.band 537 46,.shr 224 16,.band 539 46,.shr 224 24,.band 541 46,.shr 257 0,.band 543 46,.shr 257 8,.band 545 46,.shr 257 16,.band 547 46,.shr 257 24,.band 549 46,.shr 260 0,.band 551 46,.shr 260 8,.band 553 46]
theorem partPartition7 : partOps7=ArtifactSharedFrameGroup7.partOps := rfl
theorem partChecked7 : ArtifactSharedFrameGroup7.partBytes=statementBytes 491 (partOps7.map lower) := by
  rw [partPartition7]
  exact ArtifactSharedFrameGroup7.partChecked
theorem partLength7 : partOps7.length=64 := rfl
def partOps8 : List WordIR.Op := [.shr 260 16,.band 555 46,.shr 260 24,.band 557 46,.shr 276 0,.band 559 46,.shr 276 8,.band 561 46,.shr 276 16,.band 563 46,.shr 276 24,.band 565 46,.shr 284 0,.band 567 46,.shr 284 8,.band 569 46,.shr 284 16,.band 571 46,.shr 284 24,.band 573 46,.shr 340 0,.band 575 46,.shr 341 0,.band 577 46,.band 1 50,.bxor 1 50,.badd 1 50,.bnot 581,.band 580 582,.bxor 579 583,.shr 584 31,.literal (BitVec.ofNat 32 3),.bnot 1,.band 586 587,.bxor 586 587,.badd 586 587,.bnot 590,.band 589 591,.bxor 588 592,.shr 593 31,.band 585 594,.shr 340 1,.band 596 50,.bxor 596 50,.badd 596 50,.bnot 599,.band 598 600,.bxor 597 601,.shr 602 31,.bxor 603 43,.shr 341 1,.band 605 50,.bxor 605 50,.badd 605 50,.bnot 608,.band 607 609,.bxor 606 610,.shr 611 31,.bxor 612 43,.bxor 276 276,.band 614 50,.bxor 614 50,.badd 614 50,.bnot 617]
theorem partPartition8 : partOps8=ArtifactSharedFrameGroup8.partOps := rfl
theorem partChecked8 : ArtifactSharedFrameGroup8.partBytes=statementBytes 555 (partOps8.map lower) := by
  rw [partPartition8]
  exact ArtifactSharedFrameGroup8.partChecked
theorem partLength8 : partOps8.length=64 := rfl
def partOps9 : List WordIR.Op := [.band 616 618,.bxor 615 619,.shr 620 31,.bxor 621 43,.bxor 284 284,.band 623 50,.bxor 623 50,.badd 623 50,.bnot 626,.band 625 627,.bxor 624 628,.shr 629 31,.bxor 630 43,.literal (BitVec.ofNat 32 2),.bxor 0 632,.band 633 50,.bxor 633 50,.badd 633 50,.bnot 636,.band 635 637,.bxor 634 638,.shr 639 31,.bxor 640 43,.bnot 641,.badd 642 43,.band 643 35,.bnot 643,.literal (BitVec.ofNat 32 1779033703),.band 645 646,.bxor 644 647,.band 643 36,.literal (BitVec.ofNat 32 3144134277),.band 645 650,.bxor 649 651,.band 643 37,.literal (BitVec.ofNat 32 1013904242),.band 645 654,.bxor 653 655,.band 643 38,.literal (BitVec.ofNat 32 2773480762),.band 645 658,.bxor 657 659,.band 643 39,.literal (BitVec.ofNat 32 1359893119),.band 645 662,.bxor 661 663,.band 643 40,.literal (BitVec.ofNat 32 2600822924),.band 645 666,.bxor 665 667,.band 643 41,.literal (BitVec.ofNat 32 528734635),.band 645 670,.bxor 669 671,.band 643 42,.literal (BitVec.ofNat 32 1541459225),.band 645 674,.bxor 673 675,.band 643 478,.band 645 378,.bxor 677 678,.band 643 480,.band 645 379,.bxor 680 681]
theorem partPartition9 : partOps9=ArtifactSharedFrameGroup9.partOps := rfl
theorem partChecked9 : ArtifactSharedFrameGroup9.partBytes=statementBytes 619 (partOps9.map lower) := by
  rw [partPartition9]
  exact ArtifactSharedFrameGroup9.partChecked
theorem partLength9 : partOps9.length=64 := rfl
def partOps10 : List WordIR.Op := [.band 643 482,.band 645 380,.bxor 683 684,.band 643 484,.band 645 381,.bxor 686 687,.band 643 486,.band 645 382,.bxor 689 690,.band 643 488,.band 645 383,.bxor 692 693,.band 643 490,.bxor 695 693,.band 643 492,.band 645 384,.bxor 697 698,.band 643 494,.band 645 385,.bxor 700 701,.band 643 496,.bxor 703 687,.band 643 498,.band 645 386,.bxor 705 706,.band 643 500,.band 645 387,.bxor 708 709,.band 643 502,.band 645 388,.bxor 711 712,.band 643 504,.band 645 389,.bxor 714 715,.band 643 506,.band 645 390,.bxor 717 718,.band 643 508,.bxor 720 678,.band 643 510,.bxor 722 698,.band 643 512,.band 645 391,.bxor 724 725,.band 643 514,.band 645 392,.bxor 727 728,.band 643 516,.band 645 49,.bxor 730 731,.band 643 518,.band 645 393,.bxor 733 734,.band 643 520,.bxor 736 731,.band 643 522,.band 645 395,.bxor 738 739,.band 643 524,.band 645 397,.bxor 741 742,.band 643 526,.band 645 398,.bxor 744 745]
theorem partPartition10 : partOps10=ArtifactSharedFrameGroup10.partOps := rfl
theorem partChecked10 : ArtifactSharedFrameGroup10.partBytes=statementBytes 683 (partOps10.map lower) := by
  rw [partPartition10]
  exact ArtifactSharedFrameGroup10.partChecked
theorem partLength10 : partOps10.length=64 := rfl
def partOps11 : List WordIR.Op := [.band 643 528,.band 645 400,.bxor 747 748,.band 643 530,.band 645 402,.bxor 750 751,.band 643 532,.band 645 404,.bxor 753 754,.band 643 534,.band 645 406,.bxor 756 757,.band 643 536,.band 645 408,.bxor 759 760,.band 643 538,.band 645 410,.bxor 762 763,.band 643 540,.band 645 412,.bxor 765 766,.band 643 542,.band 645 414,.bxor 768 769,.band 643 544,.band 645 416,.bxor 771 772,.band 643 546,.band 645 418,.bxor 774 775,.band 643 548,.band 645 420,.bxor 777 778,.band 643 550,.band 645 422,.bxor 780 781,.band 643 552,.band 645 424,.bxor 783 784,.band 643 554,.band 645 426,.bxor 786 787,.band 643 556,.band 645 428,.bxor 789 790,.band 643 558,.band 645 430,.bxor 792 793,.band 643 560,.band 645 432,.bxor 795 796,.band 643 562,.band 645 434,.bxor 798 799,.band 643 564,.band 645 436,.bxor 801 802,.band 643 566,.band 645 438,.bxor 804 805,.band 643 568,.band 645 440,.bxor 807 808,.band 643 570]
theorem partPartition11 : partOps11=ArtifactSharedFrameGroup11.partOps := rfl
theorem partChecked11 : ArtifactSharedFrameGroup11.partBytes=statementBytes 747 (partOps11.map lower) := by
  rw [partPartition11]
  exact ArtifactSharedFrameGroup11.partChecked
theorem partLength11 : partOps11.length=64 := rfl
def partOps12 : List WordIR.Op := [.band 645 442,.bxor 810 811,.band 643 572,.band 645 444,.bxor 813 814,.band 643 574,.band 645 446,.bxor 816 817,.band 643 576,.band 645 448,.bxor 819 820,.band 643 578,.band 645 450,.bxor 822 823,.literal (BitVec.ofNat 32 128),.band 643 825,.band 645 452,.bxor 826 827,.band 643 49,.band 645 454,.bxor 829 830,.band 645 456,.bxor 829 832,.band 645 458,.bxor 829 834,.band 645 460,.bxor 829 836,.band 645 462,.bxor 829 838,.band 645 464,.bxor 829 840,.band 645 466,.bxor 829 842,.band 645 468,.bxor 829 844,.band 645 470,.bxor 829 846,.band 645 472,.bxor 829 848,.band 643 586,.band 645 474,.bxor 850 851,.literal (BitVec.ofNat 32 152),.band 643 853,.band 645 476,.bxor 854 855,.rotr 679 8,.rotr 682 16,.badd 857 858,.rotr 685 24,.badd 859 860,.badd 861 688,.rotr 691 8,.rotr 694 16,.badd 863 864,.rotr 696 24,.badd 865 866,.badd 867 699,.rotr 702 8,.rotr 704 16,.badd 869 870,.rotr 707 24,.badd 871 872,.badd 873 710]
theorem partPartition12 : partOps12=ArtifactSharedFrameGroup12.partOps := rfl
theorem partChecked12 : ArtifactSharedFrameGroup12.partBytes=statementBytes 811 (partOps12.map lower) := by
  rw [partPartition12]
  exact ArtifactSharedFrameGroup12.partChecked
theorem partLength12 : partOps12.length=64 := rfl
def partOps13 : List WordIR.Op := [.rotr 713 8,.rotr 716 16,.badd 875 876,.rotr 719 24,.badd 877 878,.badd 879 721,.rotr 723 8,.rotr 726 16,.badd 881 882,.rotr 729 24,.badd 883 884,.badd 885 732,.rotr 735 8,.rotr 737 16,.badd 887 888,.rotr 740 24,.badd 889 890,.badd 891 743,.rotr 746 8,.rotr 749 16,.badd 893 894,.rotr 752 24,.badd 895 896,.badd 897 755,.rotr 758 8,.rotr 761 16,.badd 899 900,.rotr 764 24,.badd 901 902,.badd 903 767,.rotr 770 8,.rotr 773 16,.badd 905 906,.rotr 776 24,.badd 907 908,.badd 909 779,.rotr 782 8,.rotr 785 16,.badd 911 912,.rotr 788 24,.badd 913 914,.badd 915 791,.rotr 794 8,.rotr 797 16,.badd 917 918,.rotr 800 24,.badd 919 920,.badd 921 803,.rotr 806 8,.rotr 809 16,.badd 923 924,.rotr 812 24,.badd 925 926,.badd 927 815,.rotr 818 8,.rotr 821 16,.badd 929 930,.rotr 824 24,.badd 931 932,.badd 933 828,.rotr 831 8,.rotr 833 16,.badd 935 936,.rotr 835 24]
theorem partPartition13 : partOps13=ArtifactSharedFrameGroup13.partOps := rfl
theorem partChecked13 : ArtifactSharedFrameGroup13.partBytes=statementBytes 875 (partOps13.map lower) := by
  rw [partPartition13]
  exact ArtifactSharedFrameGroup13.partChecked
theorem partLength13 : partOps13.length=64 := rfl
def partOps14 : List WordIR.Op := [.badd 937 938,.badd 939 837,.rotr 839 8,.rotr 841 16,.badd 941 942,.rotr 843 24,.badd 943 944,.badd 945 845,.rotr 847 8,.rotr 849 16,.badd 947 948,.rotr 852 24,.badd 949 950,.badd 951 856,.shr 679 8,.band 953 50,.bxor 953 50,.badd 953 50,.bnot 956,.band 955 957,.bxor 954 958,.shr 959 31,.bxor 960 43,.shr 682 8,.band 962 50,.bxor 962 50,.badd 962 50,.bnot 965,.band 964 966,.bxor 963 967,.shr 968 31,.bxor 969 43,.shr 685 8,.band 971 50,.bxor 971 50,.badd 971 50,.bnot 974,.band 973 975,.bxor 972 976,.shr 977 31,.bxor 978 43,.shr 688 8,.band 980 50,.bxor 980 50,.badd 980 50,.bnot 983,.band 982 984,.bxor 981 985,.shr 986 31,.bxor 987 43,.shr 691 8,.band 989 50,.bxor 989 50,.badd 989 50,.bnot 992,.band 991 993,.bxor 990 994,.shr 995 31,.bxor 996 43,.shr 694 8,.band 998 50,.bxor 998 50,.badd 998 50,.bnot 1001]
theorem partPartition14 : partOps14=ArtifactSharedFrameGroup14.partOps := rfl
theorem partChecked14 : ArtifactSharedFrameGroup14.partBytes=statementBytes 939 (partOps14.map lower) := by
  rw [partPartition14]
  exact ArtifactSharedFrameGroup14.partChecked
theorem partLength14 : partOps14.length=64 := rfl
def partOps15 : List WordIR.Op := [.band 1000 1002,.bxor 999 1003,.shr 1004 31,.bxor 1005 43,.shr 696 8,.band 1007 50,.bxor 1007 50,.badd 1007 50,.bnot 1010,.band 1009 1011,.bxor 1008 1012,.shr 1013 31,.bxor 1014 43,.shr 699 8,.band 1016 50,.bxor 1016 50,.badd 1016 50,.bnot 1019,.band 1018 1020,.bxor 1017 1021,.shr 1022 31,.bxor 1023 43,.shr 702 8,.band 1025 50,.bxor 1025 50,.badd 1025 50,.bnot 1028,.band 1027 1029,.bxor 1026 1030,.shr 1031 31,.bxor 1032 43,.shr 704 8,.band 1034 50,.bxor 1034 50,.badd 1034 50,.bnot 1037,.band 1036 1038,.bxor 1035 1039,.shr 1040 31,.bxor 1041 43,.shr 707 8,.band 1043 50,.bxor 1043 50,.badd 1043 50,.bnot 1046,.band 1045 1047,.bxor 1044 1048,.shr 1049 31,.bxor 1050 43,.shr 710 8,.band 1052 50,.bxor 1052 50,.badd 1052 50,.bnot 1055,.band 1054 1056,.bxor 1053 1057,.shr 1058 31,.bxor 1059 43,.shr 713 8,.band 1061 50,.bxor 1061 50,.badd 1061 50,.bnot 1064,.band 1063 1065]
theorem partPartition15 : partOps15=ArtifactSharedFrameGroup15.partOps := rfl
theorem partChecked15 : ArtifactSharedFrameGroup15.partBytes=statementBytes 1003 (partOps15.map lower) := by
  rw [partPartition15]
  exact ArtifactSharedFrameGroup15.partChecked
theorem partLength15 : partOps15.length=64 := rfl
def partOps16 : List WordIR.Op := [.bxor 1062 1066,.shr 1067 31,.bxor 1068 43,.shr 716 8,.band 1070 50,.bxor 1070 50,.badd 1070 50,.bnot 1073,.band 1072 1074,.bxor 1071 1075,.shr 1076 31,.bxor 1077 43,.shr 719 8,.band 1079 50,.bxor 1079 50,.badd 1079 50,.bnot 1082,.band 1081 1083,.bxor 1080 1084,.shr 1085 31,.bxor 1086 43,.shr 721 8,.band 1088 50,.bxor 1088 50,.badd 1088 50,.bnot 1091,.band 1090 1092,.bxor 1089 1093,.shr 1094 31,.bxor 1095 43,.shr 723 8,.band 1097 50,.bxor 1097 50,.badd 1097 50,.bnot 1100,.band 1099 1101,.bxor 1098 1102,.shr 1103 31,.bxor 1104 43,.shr 726 8,.band 1106 50,.bxor 1106 50,.badd 1106 50,.bnot 1109,.band 1108 1110,.bxor 1107 1111,.shr 1112 31,.bxor 1113 43,.shr 729 8,.band 1115 50,.bxor 1115 50,.badd 1115 50,.bnot 1118,.band 1117 1119,.bxor 1116 1120,.shr 1121 31,.bxor 1122 43,.shr 732 8,.band 1124 50,.bxor 1124 50,.badd 1124 50,.bnot 1127,.band 1126 1128,.bxor 1125 1129]
theorem partPartition16 : partOps16=ArtifactSharedFrameGroup16.partOps := rfl
theorem partChecked16 : ArtifactSharedFrameGroup16.partBytes=statementBytes 1067 (partOps16.map lower) := by
  rw [partPartition16]
  exact ArtifactSharedFrameGroup16.partChecked
theorem partLength16 : partOps16.length=64 := rfl
def partOps17 : List WordIR.Op := [.shr 1130 31,.bxor 1131 43,.shr 735 8,.band 1133 50,.bxor 1133 50,.badd 1133 50,.bnot 1136,.band 1135 1137,.bxor 1134 1138,.shr 1139 31,.bxor 1140 43,.shr 737 8,.band 1142 50,.bxor 1142 50,.badd 1142 50,.bnot 1145,.band 1144 1146,.bxor 1143 1147,.shr 1148 31,.bxor 1149 43,.shr 740 8,.band 1151 50,.bxor 1151 50,.badd 1151 50,.bnot 1154,.band 1153 1155,.bxor 1152 1156,.shr 1157 31,.bxor 1158 43,.shr 743 8,.band 1160 50,.bxor 1160 50,.badd 1160 50,.bnot 1163,.band 1162 1164,.bxor 1161 1165,.shr 1166 31,.bxor 1167 43,.shr 746 8,.band 1169 50,.bxor 1169 50,.badd 1169 50,.bnot 1172,.band 1171 1173,.bxor 1170 1174,.shr 1175 31,.bxor 1176 43,.shr 749 8,.band 1178 50,.bxor 1178 50,.badd 1178 50,.bnot 1181,.band 1180 1182,.bxor 1179 1183,.shr 1184 31,.bxor 1185 43,.shr 752 8,.band 1187 50,.bxor 1187 50,.badd 1187 50,.bnot 1190,.band 1189 1191,.bxor 1188 1192,.shr 1193 31]
theorem partPartition17 : partOps17=ArtifactSharedFrameGroup17.partOps := rfl
theorem partChecked17 : ArtifactSharedFrameGroup17.partBytes=statementBytes 1131 (partOps17.map lower) := by
  rw [partPartition17]
  exact ArtifactSharedFrameGroup17.partChecked
theorem partLength17 : partOps17.length=64 := rfl
def partOps18 : List WordIR.Op := [.bxor 1194 43,.shr 755 8,.band 1196 50,.bxor 1196 50,.badd 1196 50,.bnot 1199,.band 1198 1200,.bxor 1197 1201,.shr 1202 31,.bxor 1203 43,.shr 758 8,.band 1205 50,.bxor 1205 50,.badd 1205 50,.bnot 1208,.band 1207 1209,.bxor 1206 1210,.shr 1211 31,.bxor 1212 43,.shr 761 8,.band 1214 50,.bxor 1214 50,.badd 1214 50,.bnot 1217,.band 1216 1218,.bxor 1215 1219,.shr 1220 31,.bxor 1221 43,.shr 764 8,.band 1223 50,.bxor 1223 50,.badd 1223 50,.bnot 1226,.band 1225 1227,.bxor 1224 1228,.shr 1229 31,.bxor 1230 43,.shr 767 8,.band 1232 50,.bxor 1232 50,.badd 1232 50,.bnot 1235,.band 1234 1236,.bxor 1233 1237,.shr 1238 31,.bxor 1239 43,.shr 770 8,.band 1241 50,.bxor 1241 50,.badd 1241 50,.bnot 1244,.band 1243 1245,.bxor 1242 1246,.shr 1247 31,.bxor 1248 43,.shr 773 8,.band 1250 50,.bxor 1250 50,.badd 1250 50,.bnot 1253,.band 1252 1254,.bxor 1251 1255,.shr 1256 31,.bxor 1257 43]
theorem partPartition18 : partOps18=ArtifactSharedFrameGroup18.partOps := rfl
theorem partChecked18 : ArtifactSharedFrameGroup18.partBytes=statementBytes 1195 (partOps18.map lower) := by
  rw [partPartition18]
  exact ArtifactSharedFrameGroup18.partChecked
theorem partLength18 : partOps18.length=64 := rfl
def partOps19 : List WordIR.Op := [.shr 776 8,.band 1259 50,.bxor 1259 50,.badd 1259 50,.bnot 1262,.band 1261 1263,.bxor 1260 1264,.shr 1265 31,.bxor 1266 43,.shr 779 8,.band 1268 50,.bxor 1268 50,.badd 1268 50,.bnot 1271,.band 1270 1272,.bxor 1269 1273,.shr 1274 31,.bxor 1275 43,.shr 782 8,.band 1277 50,.bxor 1277 50,.badd 1277 50,.bnot 1280,.band 1279 1281,.bxor 1278 1282,.shr 1283 31,.bxor 1284 43,.shr 785 8,.band 1286 50,.bxor 1286 50,.badd 1286 50,.bnot 1289,.band 1288 1290,.bxor 1287 1291,.shr 1292 31,.bxor 1293 43,.shr 788 8,.band 1295 50,.bxor 1295 50,.badd 1295 50,.bnot 1298,.band 1297 1299,.bxor 1296 1300,.shr 1301 31,.bxor 1302 43,.shr 791 8,.band 1304 50,.bxor 1304 50,.badd 1304 50,.bnot 1307,.band 1306 1308,.bxor 1305 1309,.shr 1310 31,.bxor 1311 43,.shr 794 8,.band 1313 50,.bxor 1313 50,.badd 1313 50,.bnot 1316,.band 1315 1317,.bxor 1314 1318,.shr 1319 31,.bxor 1320 43,.shr 797 8]
theorem partPartition19 : partOps19=ArtifactSharedFrameGroup19.partOps := rfl
theorem partChecked19 : ArtifactSharedFrameGroup19.partBytes=statementBytes 1259 (partOps19.map lower) := by
  rw [partPartition19]
  exact ArtifactSharedFrameGroup19.partChecked
theorem partLength19 : partOps19.length=64 := rfl
def partOps20 : List WordIR.Op := [.band 1322 50,.bxor 1322 50,.badd 1322 50,.bnot 1325,.band 1324 1326,.bxor 1323 1327,.shr 1328 31,.bxor 1329 43,.shr 800 8,.band 1331 50,.bxor 1331 50,.badd 1331 50,.bnot 1334,.band 1333 1335,.bxor 1332 1336,.shr 1337 31,.bxor 1338 43,.shr 803 8,.band 1340 50,.bxor 1340 50,.badd 1340 50,.bnot 1343,.band 1342 1344,.bxor 1341 1345,.shr 1346 31,.bxor 1347 43,.shr 806 8,.band 1349 50,.bxor 1349 50,.badd 1349 50,.bnot 1352,.band 1351 1353,.bxor 1350 1354,.shr 1355 31,.bxor 1356 43,.shr 809 8,.band 1358 50,.bxor 1358 50,.badd 1358 50,.bnot 1361,.band 1360 1362,.bxor 1359 1363,.shr 1364 31,.bxor 1365 43,.shr 812 8,.band 1367 50,.bxor 1367 50,.badd 1367 50,.bnot 1370,.band 1369 1371,.bxor 1368 1372,.shr 1373 31,.bxor 1374 43,.shr 815 8,.band 1376 50,.bxor 1376 50,.badd 1376 50,.bnot 1379,.band 1378 1380,.bxor 1377 1381,.shr 1382 31,.bxor 1383 43,.shr 818 8,.band 1385 50]
theorem partPartition20 : partOps20=ArtifactSharedFrameGroup20.partOps := rfl
theorem partChecked20 : ArtifactSharedFrameGroup20.partBytes=statementBytes 1323 (partOps20.map lower) := by
  rw [partPartition20]
  exact ArtifactSharedFrameGroup20.partChecked
theorem partLength20 : partOps20.length=64 := rfl
def partOps21 : List WordIR.Op := [.bxor 1385 50,.badd 1385 50,.bnot 1388,.band 1387 1389,.bxor 1386 1390,.shr 1391 31,.bxor 1392 43,.shr 821 8,.band 1394 50,.bxor 1394 50,.badd 1394 50,.bnot 1397,.band 1396 1398,.bxor 1395 1399,.shr 1400 31,.bxor 1401 43,.shr 824 8,.band 1403 50,.bxor 1403 50,.badd 1403 50,.bnot 1406,.band 1405 1407,.bxor 1404 1408,.shr 1409 31,.bxor 1410 43,.shr 828 8,.band 1412 50,.bxor 1412 50,.badd 1412 50,.bnot 1415,.band 1414 1416,.bxor 1413 1417,.shr 1418 31,.bxor 1419 43,.shr 831 8,.band 1421 50,.bxor 1421 50,.badd 1421 50,.bnot 1424,.band 1423 1425,.bxor 1422 1426,.shr 1427 31,.bxor 1428 43,.shr 833 8,.band 1430 50,.bxor 1430 50,.badd 1430 50,.bnot 1433,.band 1432 1434,.bxor 1431 1435,.shr 1436 31,.bxor 1437 43,.shr 835 8,.band 1439 50,.bxor 1439 50,.badd 1439 50,.bnot 1442,.band 1441 1443,.bxor 1440 1444,.shr 1445 31,.bxor 1446 43,.shr 837 8,.band 1448 50,.bxor 1448 50]
theorem partPartition21 : partOps21=ArtifactSharedFrameGroup21.partOps := rfl
theorem partChecked21 : ArtifactSharedFrameGroup21.partBytes=statementBytes 1387 (partOps21.map lower) := by
  rw [partPartition21]
  exact ArtifactSharedFrameGroup21.partChecked
theorem partLength21 : partOps21.length=64 := rfl
def partOps22 : List WordIR.Op := [.badd 1448 50,.bnot 1451,.band 1450 1452,.bxor 1449 1453,.shr 1454 31,.bxor 1455 43,.shr 839 8,.band 1457 50,.bxor 1457 50,.badd 1457 50,.bnot 1460,.band 1459 1461,.bxor 1458 1462,.shr 1463 31,.bxor 1464 43,.shr 841 8,.band 1466 50,.bxor 1466 50,.badd 1466 50,.bnot 1469,.band 1468 1470,.bxor 1467 1471,.shr 1472 31,.bxor 1473 43,.shr 843 8,.band 1475 50,.bxor 1475 50,.badd 1475 50,.bnot 1478,.band 1477 1479,.bxor 1476 1480,.shr 1481 31,.bxor 1482 43,.shr 845 8,.band 1484 50,.bxor 1484 50,.badd 1484 50,.bnot 1487,.band 1486 1488,.bxor 1485 1489,.shr 1490 31,.bxor 1491 43,.shr 847 8,.band 1493 50,.bxor 1493 50,.badd 1493 50,.bnot 1496,.band 1495 1497,.bxor 1494 1498,.shr 1499 31,.bxor 1500 43,.shr 849 8,.band 1502 50,.bxor 1502 50,.badd 1502 50,.bnot 1505,.band 1504 1506,.bxor 1503 1507,.shr 1508 31,.bxor 1509 43,.shr 852 8,.band 1511 50,.bxor 1511 50,.badd 1511 50]
theorem partPartition22 : partOps22=ArtifactSharedFrameGroup22.partOps := rfl
theorem partChecked22 : ArtifactSharedFrameGroup22.partBytes=statementBytes 1451 (partOps22.map lower) := by
  rw [partPartition22]
  exact ArtifactSharedFrameGroup22.partChecked
theorem partLength22 : partOps22.length=64 := rfl
def partOps23 : List WordIR.Op := [.bnot 1514,.band 1513 1515,.bxor 1512 1516,.shr 1517 31,.bxor 1518 43,.shr 856 8,.band 1520 50,.bxor 1520 50,.badd 1520 50,.bnot 1523,.band 1522 1524,.bxor 1521 1525,.shr 1526 31,.bxor 1527 43,.rotr 946 17,.rotr 946 19,.bxor 1529 1530,.shr 946 10,.bxor 1531 1532,.badd 1533 916,.rotr 868 7,.rotr 868 18,.bxor 1535 1536,.shr 868 3,.bxor 1537 1538,.badd 1534 1539,.badd 1540 862,.rotr 952 17,.rotr 952 19,.bxor 1542 1543,.shr 952 10,.bxor 1544 1545,.badd 1546 922,.rotr 874 7,.rotr 874 18,.bxor 1548 1549,.shr 874 3,.bxor 1550 1551,.badd 1547 1552,.badd 1553 868,.rotr 1541 17,.rotr 1541 19,.bxor 1555 1556,.shr 1541 10,.bxor 1557 1558,.badd 1559 928,.rotr 880 7,.rotr 880 18,.bxor 1561 1562,.shr 880 3,.bxor 1563 1564,.badd 1560 1565,.badd 1566 874,.rotr 1554 17,.rotr 1554 19,.bxor 1568 1569,.shr 1554 10,.bxor 1570 1571,.badd 1572 934,.rotr 886 7,.rotr 886 18,.bxor 1574 1575,.shr 886 3,.bxor 1576 1577]
theorem partPartition23 : partOps23=ArtifactSharedFrameGroup23.partOps := rfl
theorem partChecked23 : ArtifactSharedFrameGroup23.partBytes=statementBytes 1515 (partOps23.map lower) := by
  rw [partPartition23]
  exact ArtifactSharedFrameGroup23.partChecked
theorem partLength23 : partOps23.length=64 := rfl
def partOps24 : List WordIR.Op := [.badd 1573 1578,.badd 1579 880,.rotr 1567 17,.rotr 1567 19,.bxor 1581 1582,.shr 1567 10,.bxor 1583 1584,.badd 1585 940,.rotr 892 7,.rotr 892 18,.bxor 1587 1588,.shr 892 3,.bxor 1589 1590,.badd 1586 1591,.badd 1592 886,.rotr 1580 17,.rotr 1580 19,.bxor 1594 1595,.shr 1580 10,.bxor 1596 1597,.badd 1598 946,.rotr 898 7,.rotr 898 18,.bxor 1600 1601,.shr 898 3,.bxor 1602 1603,.badd 1599 1604,.badd 1605 892,.rotr 1593 17,.rotr 1593 19,.bxor 1607 1608,.shr 1593 10,.bxor 1609 1610,.badd 1611 952,.rotr 904 7,.rotr 904 18,.bxor 1613 1614,.shr 904 3,.bxor 1615 1616,.badd 1612 1617,.badd 1618 898,.rotr 1606 17,.rotr 1606 19,.bxor 1620 1621,.shr 1606 10,.bxor 1622 1623,.badd 1624 1541,.rotr 910 7,.rotr 910 18,.bxor 1626 1627,.shr 910 3,.bxor 1628 1629,.badd 1625 1630,.badd 1631 904,.rotr 1619 17,.rotr 1619 19,.bxor 1633 1634,.shr 1619 10,.bxor 1635 1636,.badd 1637 1554,.rotr 916 7,.rotr 916 18,.bxor 1639 1640,.shr 916 3]
theorem partPartition24 : partOps24=ArtifactSharedFrameGroup24.partOps := rfl
theorem partChecked24 : ArtifactSharedFrameGroup24.partBytes=statementBytes 1579 (partOps24.map lower) := by
  rw [partPartition24]
  exact ArtifactSharedFrameGroup24.partChecked
theorem partLength24 : partOps24.length=64 := rfl
def partOps25 : List WordIR.Op := [.bxor 1641 1642,.badd 1638 1643,.badd 1644 910,.rotr 1632 17,.rotr 1632 19,.bxor 1646 1647,.shr 1632 10,.bxor 1648 1649,.badd 1650 1567,.rotr 922 7,.rotr 922 18,.bxor 1652 1653,.shr 922 3,.bxor 1654 1655,.badd 1651 1656,.badd 1657 916,.rotr 1645 17,.rotr 1645 19,.bxor 1659 1660,.shr 1645 10,.bxor 1661 1662,.badd 1663 1580,.rotr 928 7,.rotr 928 18,.bxor 1665 1666,.shr 928 3,.bxor 1667 1668,.badd 1664 1669,.badd 1670 922,.rotr 1658 17,.rotr 1658 19,.bxor 1672 1673,.shr 1658 10,.bxor 1674 1675,.badd 1676 1593,.rotr 934 7,.rotr 934 18,.bxor 1678 1679,.shr 934 3,.bxor 1680 1681,.badd 1677 1682,.badd 1683 928,.rotr 1671 17,.rotr 1671 19,.bxor 1685 1686,.shr 1671 10,.bxor 1687 1688,.badd 1689 1606,.rotr 940 7,.rotr 940 18,.bxor 1691 1692,.shr 940 3,.bxor 1693 1694,.badd 1690 1695,.badd 1696 934,.rotr 1684 17,.rotr 1684 19,.bxor 1698 1699,.shr 1684 10,.bxor 1700 1701,.badd 1702 1619,.rotr 946 7,.rotr 946 18,.bxor 1704 1705]
theorem partPartition25 : partOps25=ArtifactSharedFrameGroup25.partOps := rfl
theorem partChecked25 : ArtifactSharedFrameGroup25.partBytes=statementBytes 1643 (partOps25.map lower) := by
  rw [partPartition25]
  exact ArtifactSharedFrameGroup25.partChecked
theorem partLength25 : partOps25.length=64 := rfl
def partOps26 : List WordIR.Op := [.shr 946 3,.bxor 1706 1707,.badd 1703 1708,.badd 1709 940,.rotr 1697 17,.rotr 1697 19,.bxor 1711 1712,.shr 1697 10,.bxor 1713 1714,.badd 1715 1632,.rotr 952 7,.rotr 952 18,.bxor 1717 1718,.shr 952 3,.bxor 1719 1720,.badd 1716 1721,.badd 1722 946,.rotr 1710 17,.rotr 1710 19,.bxor 1724 1725,.shr 1710 10,.bxor 1726 1727,.badd 1728 1645,.rotr 1541 7,.rotr 1541 18,.bxor 1730 1731,.shr 1541 3,.bxor 1732 1733,.badd 1729 1734,.badd 1735 952,.rotr 1723 17,.rotr 1723 19,.bxor 1737 1738,.shr 1723 10,.bxor 1739 1740,.badd 1741 1658,.rotr 1554 7,.rotr 1554 18,.bxor 1743 1744,.shr 1554 3,.bxor 1745 1746,.badd 1742 1747,.badd 1748 1541,.rotr 1736 17,.rotr 1736 19,.bxor 1750 1751,.shr 1736 10,.bxor 1752 1753,.badd 1754 1671,.rotr 1567 7,.rotr 1567 18,.bxor 1756 1757,.shr 1567 3,.bxor 1758 1759,.badd 1755 1760,.badd 1761 1554,.rotr 1749 17,.rotr 1749 19,.bxor 1763 1764,.shr 1749 10,.bxor 1765 1766,.badd 1767 1684,.rotr 1580 7,.rotr 1580 18]
theorem partPartition26 : partOps26=ArtifactSharedFrameGroup26.partOps := rfl
theorem partChecked26 : ArtifactSharedFrameGroup26.partBytes=statementBytes 1707 (partOps26.map lower) := by
  rw [partPartition26]
  exact ArtifactSharedFrameGroup26.partChecked
theorem partLength26 : partOps26.length=64 := rfl
def partOps27 : List WordIR.Op := [.bxor 1769 1770,.shr 1580 3,.bxor 1771 1772,.badd 1768 1773,.badd 1774 1567,.rotr 1762 17,.rotr 1762 19,.bxor 1776 1777,.shr 1762 10,.bxor 1778 1779,.badd 1780 1697,.rotr 1593 7,.rotr 1593 18,.bxor 1782 1783,.shr 1593 3,.bxor 1784 1785,.badd 1781 1786,.badd 1787 1580,.rotr 1775 17,.rotr 1775 19,.bxor 1789 1790,.shr 1775 10,.bxor 1791 1792,.badd 1793 1710,.rotr 1606 7,.rotr 1606 18,.bxor 1795 1796,.shr 1606 3,.bxor 1797 1798,.badd 1794 1799,.badd 1800 1593,.rotr 1788 17,.rotr 1788 19,.bxor 1802 1803,.shr 1788 10,.bxor 1804 1805,.badd 1806 1723,.rotr 1619 7,.rotr 1619 18,.bxor 1808 1809,.shr 1619 3,.bxor 1810 1811,.badd 1807 1812,.badd 1813 1606,.rotr 1801 17,.rotr 1801 19,.bxor 1815 1816,.shr 1801 10,.bxor 1817 1818,.badd 1819 1736,.rotr 1632 7,.rotr 1632 18,.bxor 1821 1822,.shr 1632 3,.bxor 1823 1824,.badd 1820 1825,.badd 1826 1619,.rotr 1814 17,.rotr 1814 19,.bxor 1828 1829,.shr 1814 10,.bxor 1830 1831,.badd 1832 1749,.rotr 1645 7]
theorem partPartition27 : partOps27=ArtifactSharedFrameGroup27.partOps := rfl
theorem partChecked27 : ArtifactSharedFrameGroup27.partBytes=statementBytes 1771 (partOps27.map lower) := by
  rw [partPartition27]
  exact ArtifactSharedFrameGroup27.partChecked
theorem partLength27 : partOps27.length=64 := rfl
def partOps28 : List WordIR.Op := [.rotr 1645 18,.bxor 1834 1835,.shr 1645 3,.bxor 1836 1837,.badd 1833 1838,.badd 1839 1632,.rotr 1827 17,.rotr 1827 19,.bxor 1841 1842,.shr 1827 10,.bxor 1843 1844,.badd 1845 1762,.rotr 1658 7,.rotr 1658 18,.bxor 1847 1848,.shr 1658 3,.bxor 1849 1850,.badd 1846 1851,.badd 1852 1645,.rotr 1840 17,.rotr 1840 19,.bxor 1854 1855,.shr 1840 10,.bxor 1856 1857,.badd 1858 1775,.rotr 1671 7,.rotr 1671 18,.bxor 1860 1861,.shr 1671 3,.bxor 1862 1863,.badd 1859 1864,.badd 1865 1658,.rotr 1853 17,.rotr 1853 19,.bxor 1867 1868,.shr 1853 10,.bxor 1869 1870,.badd 1871 1788,.rotr 1684 7,.rotr 1684 18,.bxor 1873 1874,.shr 1684 3,.bxor 1875 1876,.badd 1872 1877,.badd 1878 1671,.rotr 1866 17,.rotr 1866 19,.bxor 1880 1881,.shr 1866 10,.bxor 1882 1883,.badd 1884 1801,.rotr 1697 7,.rotr 1697 18,.bxor 1886 1887,.shr 1697 3,.bxor 1888 1889,.badd 1885 1890,.badd 1891 1684,.rotr 1879 17,.rotr 1879 19,.bxor 1893 1894,.shr 1879 10,.bxor 1895 1896,.badd 1897 1814]
theorem partPartition28 : partOps28=ArtifactSharedFrameGroup28.partOps := rfl
theorem partChecked28 : ArtifactSharedFrameGroup28.partBytes=statementBytes 1835 (partOps28.map lower) := by
  rw [partPartition28]
  exact ArtifactSharedFrameGroup28.partChecked
theorem partLength28 : partOps28.length=64 := rfl
def partOps29 : List WordIR.Op := [.rotr 1710 7,.rotr 1710 18,.bxor 1899 1900,.shr 1710 3,.bxor 1901 1902,.badd 1898 1903,.badd 1904 1697,.rotr 1892 17,.rotr 1892 19,.bxor 1906 1907,.shr 1892 10,.bxor 1908 1909,.badd 1910 1827,.rotr 1723 7,.rotr 1723 18,.bxor 1912 1913,.shr 1723 3,.bxor 1914 1915,.badd 1911 1916,.badd 1917 1710,.rotr 1905 17,.rotr 1905 19,.bxor 1919 1920,.shr 1905 10,.bxor 1921 1922,.badd 1923 1840,.rotr 1736 7,.rotr 1736 18,.bxor 1925 1926,.shr 1736 3,.bxor 1927 1928,.badd 1924 1929,.badd 1930 1723,.rotr 1918 17,.rotr 1918 19,.bxor 1932 1933,.shr 1918 10,.bxor 1934 1935,.badd 1936 1853,.rotr 1749 7,.rotr 1749 18,.bxor 1938 1939,.shr 1749 3,.bxor 1940 1941,.badd 1937 1942,.badd 1943 1736,.rotr 1931 17,.rotr 1931 19,.bxor 1945 1946,.shr 1931 10,.bxor 1947 1948,.badd 1949 1866,.rotr 1762 7,.rotr 1762 18,.bxor 1951 1952,.shr 1762 3,.bxor 1953 1954,.badd 1950 1955,.badd 1956 1749,.rotr 1944 17,.rotr 1944 19,.bxor 1958 1959,.shr 1944 10,.bxor 1960 1961]
theorem partPartition29 : partOps29=ArtifactSharedFrameGroup29.partOps := rfl
theorem partChecked29 : ArtifactSharedFrameGroup29.partBytes=statementBytes 1899 (partOps29.map lower) := by
  rw [partPartition29]
  exact ArtifactSharedFrameGroup29.partChecked
theorem partLength29 : partOps29.length=64 := rfl
def partOps30 : List WordIR.Op := [.badd 1962 1879,.rotr 1775 7,.rotr 1775 18,.bxor 1964 1965,.shr 1775 3,.bxor 1966 1967,.badd 1963 1968,.badd 1969 1762,.rotr 1957 17,.rotr 1957 19,.bxor 1971 1972,.shr 1957 10,.bxor 1973 1974,.badd 1975 1892,.rotr 1788 7,.rotr 1788 18,.bxor 1977 1978,.shr 1788 3,.bxor 1979 1980,.badd 1976 1981,.badd 1982 1775,.rotr 1970 17,.rotr 1970 19,.bxor 1984 1985,.shr 1970 10,.bxor 1986 1987,.badd 1988 1905,.rotr 1801 7,.rotr 1801 18,.bxor 1990 1991,.shr 1801 3,.bxor 1992 1993,.badd 1989 1994,.badd 1995 1788,.rotr 1983 17,.rotr 1983 19,.bxor 1997 1998,.shr 1983 10,.bxor 1999 2000,.badd 2001 1918,.rotr 1814 7,.rotr 1814 18,.bxor 2003 2004,.shr 1814 3,.bxor 2005 2006,.badd 2002 2007,.badd 2008 1801,.rotr 1996 17,.rotr 1996 19,.bxor 2010 2011,.shr 1996 10,.bxor 2012 2013,.badd 2014 1931,.rotr 1827 7,.rotr 1827 18,.bxor 2016 2017,.shr 1827 3,.bxor 2018 2019,.badd 2015 2020,.badd 2021 1814,.rotr 2009 17,.rotr 2009 19,.bxor 2023 2024,.shr 2009 10]
theorem partPartition30 : partOps30=ArtifactSharedFrameGroup30.partOps := rfl
theorem partChecked30 : ArtifactSharedFrameGroup30.partBytes=statementBytes 1963 (partOps30.map lower) := by
  rw [partPartition30]
  exact ArtifactSharedFrameGroup30.partChecked
theorem partLength30 : partOps30.length=64 := rfl
def partOps31 : List WordIR.Op := [.bxor 2025 2026,.badd 2027 1944,.rotr 1840 7,.rotr 1840 18,.bxor 2029 2030,.shr 1840 3,.bxor 2031 2032,.badd 2028 2033,.badd 2034 1827,.rotr 2022 17,.rotr 2022 19,.bxor 2036 2037,.shr 2022 10,.bxor 2038 2039,.badd 2040 1957,.rotr 1853 7,.rotr 1853 18,.bxor 2042 2043,.shr 1853 3,.bxor 2044 2045,.badd 2041 2046,.badd 2047 1840,.rotr 2035 17,.rotr 2035 19,.bxor 2049 2050,.shr 2035 10,.bxor 2051 2052,.badd 2053 1970,.rotr 1866 7,.rotr 1866 18,.bxor 2055 2056,.shr 1866 3,.bxor 2057 2058,.badd 2054 2059,.badd 2060 1853,.rotr 2048 17,.rotr 2048 19,.bxor 2062 2063,.shr 2048 10,.bxor 2064 2065,.badd 2066 1983,.rotr 1879 7,.rotr 1879 18,.bxor 2068 2069,.shr 1879 3,.bxor 2070 2071,.badd 2067 2072,.badd 2073 1866,.rotr 2061 17,.rotr 2061 19,.bxor 2075 2076,.shr 2061 10,.bxor 2077 2078,.badd 2079 1996,.rotr 1892 7,.rotr 1892 18,.bxor 2081 2082,.shr 1892 3,.bxor 2083 2084,.badd 2080 2085,.badd 2086 1879,.rotr 2074 17,.rotr 2074 19,.bxor 2088 2089]
theorem partPartition31 : partOps31=ArtifactSharedFrameGroup31.partOps := rfl
theorem partChecked31 : ArtifactSharedFrameGroup31.partBytes=statementBytes 2027 (partOps31.map lower) := by
  rw [partPartition31]
  exact ArtifactSharedFrameGroup31.partChecked
theorem partLength31 : partOps31.length=64 := rfl
def partOps32 : List WordIR.Op := [.shr 2074 10,.bxor 2090 2091,.badd 2092 2009,.rotr 1905 7,.rotr 1905 18,.bxor 2094 2095,.shr 1905 3,.bxor 2096 2097,.badd 2093 2098,.badd 2099 1892,.rotr 2087 17,.rotr 2087 19,.bxor 2101 2102,.shr 2087 10,.bxor 2103 2104,.badd 2105 2022,.rotr 1918 7,.rotr 1918 18,.bxor 2107 2108,.shr 1918 3,.bxor 2109 2110,.badd 2106 2111,.badd 2112 1905,.rotr 2100 17,.rotr 2100 19,.bxor 2114 2115,.shr 2100 10,.bxor 2116 2117,.badd 2118 2035,.rotr 1931 7,.rotr 1931 18,.bxor 2120 2121,.shr 1931 3,.bxor 2122 2123,.badd 2119 2124,.badd 2125 1918,.rotr 2113 17,.rotr 2113 19,.bxor 2127 2128,.shr 2113 10,.bxor 2129 2130,.badd 2131 2048,.rotr 1944 7,.rotr 1944 18,.bxor 2133 2134,.shr 1944 3,.bxor 2135 2136,.badd 2132 2137,.badd 2138 1931,.rotr 2126 17,.rotr 2126 19,.bxor 2140 2141,.shr 2126 10,.bxor 2142 2143,.badd 2144 2061,.rotr 1957 7,.rotr 1957 18,.bxor 2146 2147,.shr 1957 3,.bxor 2148 2149,.badd 2145 2150,.badd 2151 1944,.rotr 664 6,.rotr 664 11]
theorem partPartition32 : partOps32=ArtifactSharedFrameGroup32.partOps := rfl
theorem partChecked32 : ArtifactSharedFrameGroup32.partBytes=statementBytes 2091 (partOps32.map lower) := by
  rw [partPartition32]
  exact ArtifactSharedFrameGroup32.partChecked
theorem partLength32 : partOps32.length=64 := rfl
def partOps33 : List WordIR.Op := [.bxor 2153 2154,.rotr 664 25,.bxor 2155 2156,.badd 676 2157,.band 664 668,.bnot 664,.band 2160 672,.bxor 2159 2161,.badd 2158 2162,.literal (BitVec.ofNat 32 1116352408),.badd 2163 2164,.badd 2165 862,.rotr 648 2,.rotr 648 13,.bxor 2167 2168,.rotr 648 22,.bxor 2169 2170,.band 648 652,.band 648 656,.bxor 2172 2173,.band 652 656,.bxor 2174 2175,.badd 2171 2176,.badd 2166 2177,.badd 660 2166,.rotr 2179 6,.rotr 2179 11,.bxor 2180 2181,.rotr 2179 25,.bxor 2182 2183,.badd 672 2184,.band 2179 664,.bnot 2179,.band 2187 668,.bxor 2186 2188,.badd 2185 2189,.literal (BitVec.ofNat 32 1899447441),.badd 2190 2191,.badd 2192 868,.rotr 2178 2,.rotr 2178 13,.bxor 2194 2195,.rotr 2178 22,.bxor 2196 2197,.band 2178 648,.band 2178 652,.bxor 2199 2200,.bxor 2201 2172,.badd 2198 2202,.badd 2193 2203,.badd 656 2193,.rotr 2205 6,.rotr 2205 11,.bxor 2206 2207,.rotr 2205 25,.bxor 2208 2209,.badd 668 2210,.band 2205 2179,.bnot 2205,.band 2213 664,.bxor 2212 2214,.badd 2211 2215,.literal (BitVec.ofNat 32 3049323471),.badd 2216 2217]
theorem partPartition33 : partOps33=ArtifactSharedFrameGroup33.partOps := rfl
theorem partChecked33 : ArtifactSharedFrameGroup33.partBytes=statementBytes 2155 (partOps33.map lower) := by
  rw [partPartition33]
  exact ArtifactSharedFrameGroup33.partChecked
theorem partLength33 : partOps33.length=64 := rfl
def partOps34 : List WordIR.Op := [.badd 2218 874,.rotr 2204 2,.rotr 2204 13,.bxor 2220 2221,.rotr 2204 22,.bxor 2222 2223,.band 2204 2178,.band 2204 648,.bxor 2225 2226,.bxor 2227 2199,.badd 2224 2228,.badd 2219 2229,.badd 652 2219,.rotr 2231 6,.rotr 2231 11,.bxor 2232 2233,.rotr 2231 25,.bxor 2234 2235,.badd 664 2236,.band 2231 2205,.bnot 2231,.band 2239 2179,.bxor 2238 2240,.badd 2237 2241,.literal (BitVec.ofNat 32 3921009573),.badd 2242 2243,.badd 2244 880,.rotr 2230 2,.rotr 2230 13,.bxor 2246 2247,.rotr 2230 22,.bxor 2248 2249,.band 2230 2204,.band 2230 2178,.bxor 2251 2252,.bxor 2253 2225,.badd 2250 2254,.badd 2245 2255,.badd 648 2245,.rotr 2257 6,.rotr 2257 11,.bxor 2258 2259,.rotr 2257 25,.bxor 2260 2261,.badd 2179 2262,.band 2257 2231,.bnot 2257,.band 2265 2205,.bxor 2264 2266,.badd 2263 2267,.literal (BitVec.ofNat 32 961987163),.badd 2268 2269,.badd 2270 886,.rotr 2256 2,.rotr 2256 13,.bxor 2272 2273,.rotr 2256 22,.bxor 2274 2275,.band 2256 2230,.band 2256 2204,.bxor 2277 2278,.bxor 2279 2251,.badd 2276 2280,.badd 2271 2281]
theorem partPartition34 : partOps34=ArtifactSharedFrameGroup34.partOps := rfl
theorem partChecked34 : ArtifactSharedFrameGroup34.partBytes=statementBytes 2219 (partOps34.map lower) := by
  rw [partPartition34]
  exact ArtifactSharedFrameGroup34.partChecked
theorem partLength34 : partOps34.length=64 := rfl
def partOps35 : List WordIR.Op := [.badd 2178 2271,.rotr 2283 6,.rotr 2283 11,.bxor 2284 2285,.rotr 2283 25,.bxor 2286 2287,.badd 2205 2288,.band 2283 2257,.bnot 2283,.band 2291 2231,.bxor 2290 2292,.badd 2289 2293,.literal (BitVec.ofNat 32 1508970993),.badd 2294 2295,.badd 2296 892,.rotr 2282 2,.rotr 2282 13,.bxor 2298 2299,.rotr 2282 22,.bxor 2300 2301,.band 2282 2256,.band 2282 2230,.bxor 2303 2304,.bxor 2305 2277,.badd 2302 2306,.badd 2297 2307,.badd 2204 2297,.rotr 2309 6,.rotr 2309 11,.bxor 2310 2311,.rotr 2309 25,.bxor 2312 2313,.badd 2231 2314,.band 2309 2283,.bnot 2309,.band 2317 2257,.bxor 2316 2318,.badd 2315 2319,.literal (BitVec.ofNat 32 2453635748),.badd 2320 2321,.badd 2322 898,.rotr 2308 2,.rotr 2308 13,.bxor 2324 2325,.rotr 2308 22,.bxor 2326 2327,.band 2308 2282,.band 2308 2256,.bxor 2329 2330,.bxor 2331 2303,.badd 2328 2332,.badd 2323 2333,.badd 2230 2323,.rotr 2335 6,.rotr 2335 11,.bxor 2336 2337,.rotr 2335 25,.bxor 2338 2339,.badd 2257 2340,.band 2335 2309,.bnot 2335,.band 2343 2283,.bxor 2342 2344,.badd 2341 2345]
theorem partPartition35 : partOps35=ArtifactSharedFrameGroup35.partOps := rfl
theorem partChecked35 : ArtifactSharedFrameGroup35.partBytes=statementBytes 2283 (partOps35.map lower) := by
  rw [partPartition35]
  exact ArtifactSharedFrameGroup35.partChecked
theorem partLength35 : partOps35.length=64 := rfl
def partOps36 : List WordIR.Op := [.literal (BitVec.ofNat 32 2870763221),.badd 2346 2347,.badd 2348 904,.rotr 2334 2,.rotr 2334 13,.bxor 2350 2351,.rotr 2334 22,.bxor 2352 2353,.band 2334 2308,.band 2334 2282,.bxor 2355 2356,.bxor 2357 2329,.badd 2354 2358,.badd 2349 2359,.badd 2256 2349,.rotr 2361 6,.rotr 2361 11,.bxor 2362 2363,.rotr 2361 25,.bxor 2364 2365,.badd 2283 2366,.band 2361 2335,.bnot 2361,.band 2369 2309,.bxor 2368 2370,.badd 2367 2371,.literal (BitVec.ofNat 32 3624381080),.badd 2372 2373,.badd 2374 910,.rotr 2360 2,.rotr 2360 13,.bxor 2376 2377,.rotr 2360 22,.bxor 2378 2379,.band 2360 2334,.band 2360 2308,.bxor 2381 2382,.bxor 2383 2355,.badd 2380 2384,.badd 2375 2385,.badd 2282 2375,.rotr 2387 6,.rotr 2387 11,.bxor 2388 2389,.rotr 2387 25,.bxor 2390 2391,.badd 2309 2392,.band 2387 2361,.bnot 2387,.band 2395 2335,.bxor 2394 2396,.badd 2393 2397,.literal (BitVec.ofNat 32 310598401),.badd 2398 2399,.badd 2400 916,.rotr 2386 2,.rotr 2386 13,.bxor 2402 2403,.rotr 2386 22,.bxor 2404 2405,.band 2386 2360,.band 2386 2334,.bxor 2407 2408,.bxor 2409 2381]
theorem partPartition36 : partOps36=ArtifactSharedFrameGroup36.partOps := rfl
theorem partChecked36 : ArtifactSharedFrameGroup36.partBytes=statementBytes 2347 (partOps36.map lower) := by
  rw [partPartition36]
  exact ArtifactSharedFrameGroup36.partChecked
theorem partLength36 : partOps36.length=64 := rfl
def partOps37 : List WordIR.Op := [.badd 2406 2410,.badd 2401 2411,.badd 2308 2401,.rotr 2413 6,.rotr 2413 11,.bxor 2414 2415,.rotr 2413 25,.bxor 2416 2417,.badd 2335 2418,.band 2413 2387,.bnot 2413,.band 2421 2361,.bxor 2420 2422,.badd 2419 2423,.literal (BitVec.ofNat 32 607225278),.badd 2424 2425,.badd 2426 922,.rotr 2412 2,.rotr 2412 13,.bxor 2428 2429,.rotr 2412 22,.bxor 2430 2431,.band 2412 2386,.band 2412 2360,.bxor 2433 2434,.bxor 2435 2407,.badd 2432 2436,.badd 2427 2437,.badd 2334 2427,.rotr 2439 6,.rotr 2439 11,.bxor 2440 2441,.rotr 2439 25,.bxor 2442 2443,.badd 2361 2444,.band 2439 2413,.bnot 2439,.band 2447 2387,.bxor 2446 2448,.badd 2445 2449,.literal (BitVec.ofNat 32 1426881987),.badd 2450 2451,.badd 2452 928,.rotr 2438 2,.rotr 2438 13,.bxor 2454 2455,.rotr 2438 22,.bxor 2456 2457,.band 2438 2412,.band 2438 2386,.bxor 2459 2460,.bxor 2461 2433,.badd 2458 2462,.badd 2453 2463,.badd 2360 2453,.rotr 2465 6,.rotr 2465 11,.bxor 2466 2467,.rotr 2465 25,.bxor 2468 2469,.badd 2387 2470,.band 2465 2439,.bnot 2465,.band 2473 2413]
theorem partPartition37 : partOps37=ArtifactSharedFrameGroup37.partOps := rfl
theorem partChecked37 : ArtifactSharedFrameGroup37.partBytes=statementBytes 2411 (partOps37.map lower) := by
  rw [partPartition37]
  exact ArtifactSharedFrameGroup37.partChecked
theorem partLength37 : partOps37.length=64 := rfl
def partOps38 : List WordIR.Op := [.bxor 2472 2474,.badd 2471 2475,.literal (BitVec.ofNat 32 1925078388),.badd 2476 2477,.badd 2478 934,.rotr 2464 2,.rotr 2464 13,.bxor 2480 2481,.rotr 2464 22,.bxor 2482 2483,.band 2464 2438,.band 2464 2412,.bxor 2485 2486,.bxor 2487 2459,.badd 2484 2488,.badd 2479 2489,.badd 2386 2479,.rotr 2491 6,.rotr 2491 11,.bxor 2492 2493,.rotr 2491 25,.bxor 2494 2495,.badd 2413 2496,.band 2491 2465,.bnot 2491,.band 2499 2439,.bxor 2498 2500,.badd 2497 2501,.literal (BitVec.ofNat 32 2162078206),.badd 2502 2503,.badd 2504 940,.rotr 2490 2,.rotr 2490 13,.bxor 2506 2507,.rotr 2490 22,.bxor 2508 2509,.band 2490 2464,.band 2490 2438,.bxor 2511 2512,.bxor 2513 2485,.badd 2510 2514,.badd 2505 2515,.badd 2412 2505,.rotr 2517 6,.rotr 2517 11,.bxor 2518 2519,.rotr 2517 25,.bxor 2520 2521,.badd 2439 2522,.band 2517 2491,.bnot 2517,.band 2525 2465,.bxor 2524 2526,.badd 2523 2527,.literal (BitVec.ofNat 32 2614888103),.badd 2528 2529,.badd 2530 946,.rotr 2516 2,.rotr 2516 13,.bxor 2532 2533,.rotr 2516 22,.bxor 2534 2535,.band 2516 2490,.band 2516 2464]
theorem partPartition38 : partOps38=ArtifactSharedFrameGroup38.partOps := rfl
theorem partChecked38 : ArtifactSharedFrameGroup38.partBytes=statementBytes 2475 (partOps38.map lower) := by
  rw [partPartition38]
  exact ArtifactSharedFrameGroup38.partChecked
theorem partLength38 : partOps38.length=64 := rfl
def partOps39 : List WordIR.Op := [.bxor 2537 2538,.bxor 2539 2511,.badd 2536 2540,.badd 2531 2541,.badd 2438 2531,.rotr 2543 6,.rotr 2543 11,.bxor 2544 2545,.rotr 2543 25,.bxor 2546 2547,.badd 2465 2548,.band 2543 2517,.bnot 2543,.band 2551 2491,.bxor 2550 2552,.badd 2549 2553,.literal (BitVec.ofNat 32 3248222580),.badd 2554 2555,.badd 2556 952,.rotr 2542 2,.rotr 2542 13,.bxor 2558 2559,.rotr 2542 22,.bxor 2560 2561,.band 2542 2516,.band 2542 2490,.bxor 2563 2564,.bxor 2565 2537,.badd 2562 2566,.badd 2557 2567,.badd 2464 2557,.rotr 2569 6,.rotr 2569 11,.bxor 2570 2571,.rotr 2569 25,.bxor 2572 2573,.badd 2491 2574,.band 2569 2543,.bnot 2569,.band 2577 2517,.bxor 2576 2578,.badd 2575 2579,.literal (BitVec.ofNat 32 3835390401),.badd 2580 2581,.badd 2582 1541,.rotr 2568 2,.rotr 2568 13,.bxor 2584 2585,.rotr 2568 22,.bxor 2586 2587,.band 2568 2542,.band 2568 2516,.bxor 2589 2590,.bxor 2591 2563,.badd 2588 2592,.badd 2583 2593,.badd 2490 2583,.rotr 2595 6,.rotr 2595 11,.bxor 2596 2597,.rotr 2595 25,.bxor 2598 2599,.badd 2517 2600,.band 2595 2569]
theorem partPartition39 : partOps39=ArtifactSharedFrameGroup39.partOps := rfl
theorem partChecked39 : ArtifactSharedFrameGroup39.partBytes=statementBytes 2539 (partOps39.map lower) := by
  rw [partPartition39]
  exact ArtifactSharedFrameGroup39.partChecked
theorem partLength39 : partOps39.length=64 := rfl
def partOps40 : List WordIR.Op := [.bnot 2595,.band 2603 2543,.bxor 2602 2604,.badd 2601 2605,.literal (BitVec.ofNat 32 4022224774),.badd 2606 2607,.badd 2608 1554,.rotr 2594 2,.rotr 2594 13,.bxor 2610 2611,.rotr 2594 22,.bxor 2612 2613,.band 2594 2568,.band 2594 2542,.bxor 2615 2616,.bxor 2617 2589,.badd 2614 2618,.badd 2609 2619,.badd 2516 2609,.rotr 2621 6,.rotr 2621 11,.bxor 2622 2623,.rotr 2621 25,.bxor 2624 2625,.badd 2543 2626,.band 2621 2595,.bnot 2621,.band 2629 2569,.bxor 2628 2630,.badd 2627 2631,.literal (BitVec.ofNat 32 264347078),.badd 2632 2633,.badd 2634 1567,.rotr 2620 2,.rotr 2620 13,.bxor 2636 2637,.rotr 2620 22,.bxor 2638 2639,.band 2620 2594,.band 2620 2568,.bxor 2641 2642,.bxor 2643 2615,.badd 2640 2644,.badd 2635 2645,.badd 2542 2635,.rotr 2647 6,.rotr 2647 11,.bxor 2648 2649,.rotr 2647 25,.bxor 2650 2651,.badd 2569 2652,.band 2647 2621,.bnot 2647,.band 2655 2595,.bxor 2654 2656,.badd 2653 2657,.literal (BitVec.ofNat 32 604807628),.badd 2658 2659,.badd 2660 1580,.rotr 2646 2,.rotr 2646 13,.bxor 2662 2663,.rotr 2646 22,.bxor 2664 2665]
theorem partPartition40 : partOps40=ArtifactSharedFrameGroup40.partOps := rfl
theorem partChecked40 : ArtifactSharedFrameGroup40.partBytes=statementBytes 2603 (partOps40.map lower) := by
  rw [partPartition40]
  exact ArtifactSharedFrameGroup40.partChecked
theorem partLength40 : partOps40.length=64 := rfl
def partOps41 : List WordIR.Op := [.band 2646 2620,.band 2646 2594,.bxor 2667 2668,.bxor 2669 2641,.badd 2666 2670,.badd 2661 2671,.badd 2568 2661,.rotr 2673 6,.rotr 2673 11,.bxor 2674 2675,.rotr 2673 25,.bxor 2676 2677,.badd 2595 2678,.band 2673 2647,.bnot 2673,.band 2681 2621,.bxor 2680 2682,.badd 2679 2683,.literal (BitVec.ofNat 32 770255983),.badd 2684 2685,.badd 2686 1593,.rotr 2672 2,.rotr 2672 13,.bxor 2688 2689,.rotr 2672 22,.bxor 2690 2691,.band 2672 2646,.band 2672 2620,.bxor 2693 2694,.bxor 2695 2667,.badd 2692 2696,.badd 2687 2697,.badd 2594 2687,.rotr 2699 6,.rotr 2699 11,.bxor 2700 2701,.rotr 2699 25,.bxor 2702 2703,.badd 2621 2704,.band 2699 2673,.bnot 2699,.band 2707 2647,.bxor 2706 2708,.badd 2705 2709,.literal (BitVec.ofNat 32 1249150122),.badd 2710 2711,.badd 2712 1606,.rotr 2698 2,.rotr 2698 13,.bxor 2714 2715,.rotr 2698 22,.bxor 2716 2717,.band 2698 2672,.band 2698 2646,.bxor 2719 2720,.bxor 2721 2693,.badd 2718 2722,.badd 2713 2723,.badd 2620 2713,.rotr 2725 6,.rotr 2725 11,.bxor 2726 2727,.rotr 2725 25,.bxor 2728 2729]
theorem partPartition41 : partOps41=ArtifactSharedFrameGroup41.partOps := rfl
theorem partChecked41 : ArtifactSharedFrameGroup41.partBytes=statementBytes 2667 (partOps41.map lower) := by
  rw [partPartition41]
  exact ArtifactSharedFrameGroup41.partChecked
theorem partLength41 : partOps41.length=64 := rfl
def partOps42 : List WordIR.Op := [.badd 2647 2730,.band 2725 2699,.bnot 2725,.band 2733 2673,.bxor 2732 2734,.badd 2731 2735,.literal (BitVec.ofNat 32 1555081692),.badd 2736 2737,.badd 2738 1619,.rotr 2724 2,.rotr 2724 13,.bxor 2740 2741,.rotr 2724 22,.bxor 2742 2743,.band 2724 2698,.band 2724 2672,.bxor 2745 2746,.bxor 2747 2719,.badd 2744 2748,.badd 2739 2749,.badd 2646 2739,.rotr 2751 6,.rotr 2751 11,.bxor 2752 2753,.rotr 2751 25,.bxor 2754 2755,.badd 2673 2756,.band 2751 2725,.bnot 2751,.band 2759 2699,.bxor 2758 2760,.badd 2757 2761,.literal (BitVec.ofNat 32 1996064986),.badd 2762 2763,.badd 2764 1632,.rotr 2750 2,.rotr 2750 13,.bxor 2766 2767,.rotr 2750 22,.bxor 2768 2769,.band 2750 2724,.band 2750 2698,.bxor 2771 2772,.bxor 2773 2745,.badd 2770 2774,.badd 2765 2775,.badd 2672 2765,.rotr 2777 6,.rotr 2777 11,.bxor 2778 2779,.rotr 2777 25,.bxor 2780 2781,.badd 2699 2782,.band 2777 2751,.bnot 2777,.band 2785 2725,.bxor 2784 2786,.badd 2783 2787,.literal (BitVec.ofNat 32 2554220882),.badd 2788 2789,.badd 2790 1645,.rotr 2776 2,.rotr 2776 13,.bxor 2792 2793]
theorem partPartition42 : partOps42=ArtifactSharedFrameGroup42.partOps := rfl
theorem partChecked42 : ArtifactSharedFrameGroup42.partBytes=statementBytes 2731 (partOps42.map lower) := by
  rw [partPartition42]
  exact ArtifactSharedFrameGroup42.partChecked
theorem partLength42 : partOps42.length=64 := rfl
def partOps43 : List WordIR.Op := [.rotr 2776 22,.bxor 2794 2795,.band 2776 2750,.band 2776 2724,.bxor 2797 2798,.bxor 2799 2771,.badd 2796 2800,.badd 2791 2801,.badd 2698 2791,.rotr 2803 6,.rotr 2803 11,.bxor 2804 2805,.rotr 2803 25,.bxor 2806 2807,.badd 2725 2808,.band 2803 2777,.bnot 2803,.band 2811 2751,.bxor 2810 2812,.badd 2809 2813,.literal (BitVec.ofNat 32 2821834349),.badd 2814 2815,.badd 2816 1658,.rotr 2802 2,.rotr 2802 13,.bxor 2818 2819,.rotr 2802 22,.bxor 2820 2821,.band 2802 2776,.band 2802 2750,.bxor 2823 2824,.bxor 2825 2797,.badd 2822 2826,.badd 2817 2827,.badd 2724 2817,.rotr 2829 6,.rotr 2829 11,.bxor 2830 2831,.rotr 2829 25,.bxor 2832 2833,.badd 2751 2834,.band 2829 2803,.bnot 2829,.band 2837 2777,.bxor 2836 2838,.badd 2835 2839,.literal (BitVec.ofNat 32 2952996808),.badd 2840 2841,.badd 2842 1671,.rotr 2828 2,.rotr 2828 13,.bxor 2844 2845,.rotr 2828 22,.bxor 2846 2847,.band 2828 2802,.band 2828 2776,.bxor 2849 2850,.bxor 2851 2823,.badd 2848 2852,.badd 2843 2853,.badd 2750 2843,.rotr 2855 6,.rotr 2855 11,.bxor 2856 2857]
theorem partPartition43 : partOps43=ArtifactSharedFrameGroup43.partOps := rfl
theorem partChecked43 : ArtifactSharedFrameGroup43.partBytes=statementBytes 2795 (partOps43.map lower) := by
  rw [partPartition43]
  exact ArtifactSharedFrameGroup43.partChecked
theorem partLength43 : partOps43.length=64 := rfl
def partOps44 : List WordIR.Op := [.rotr 2855 25,.bxor 2858 2859,.badd 2777 2860,.band 2855 2829,.bnot 2855,.band 2863 2803,.bxor 2862 2864,.badd 2861 2865,.literal (BitVec.ofNat 32 3210313671),.badd 2866 2867,.badd 2868 1684,.rotr 2854 2,.rotr 2854 13,.bxor 2870 2871,.rotr 2854 22,.bxor 2872 2873,.band 2854 2828,.band 2854 2802,.bxor 2875 2876,.bxor 2877 2849,.badd 2874 2878,.badd 2869 2879,.badd 2776 2869,.rotr 2881 6,.rotr 2881 11,.bxor 2882 2883,.rotr 2881 25,.bxor 2884 2885,.badd 2803 2886,.band 2881 2855,.bnot 2881,.band 2889 2829,.bxor 2888 2890,.badd 2887 2891,.literal (BitVec.ofNat 32 3336571891),.badd 2892 2893,.badd 2894 1697,.rotr 2880 2,.rotr 2880 13,.bxor 2896 2897,.rotr 2880 22,.bxor 2898 2899,.band 2880 2854,.band 2880 2828,.bxor 2901 2902,.bxor 2903 2875,.badd 2900 2904,.badd 2895 2905,.badd 2802 2895,.rotr 2907 6,.rotr 2907 11,.bxor 2908 2909,.rotr 2907 25,.bxor 2910 2911,.badd 2829 2912,.band 2907 2881,.bnot 2907,.band 2915 2855,.bxor 2914 2916,.badd 2913 2917,.literal (BitVec.ofNat 32 3584528711),.badd 2918 2919,.badd 2920 1710,.rotr 2906 2]
theorem partPartition44 : partOps44=ArtifactSharedFrameGroup44.partOps := rfl
theorem partChecked44 : ArtifactSharedFrameGroup44.partBytes=statementBytes 2859 (partOps44.map lower) := by
  rw [partPartition44]
  exact ArtifactSharedFrameGroup44.partChecked
theorem partLength44 : partOps44.length=64 := rfl
def partOps45 : List WordIR.Op := [.rotr 2906 13,.bxor 2922 2923,.rotr 2906 22,.bxor 2924 2925,.band 2906 2880,.band 2906 2854,.bxor 2927 2928,.bxor 2929 2901,.badd 2926 2930,.badd 2921 2931,.badd 2828 2921,.rotr 2933 6,.rotr 2933 11,.bxor 2934 2935,.rotr 2933 25,.bxor 2936 2937,.badd 2855 2938,.band 2933 2907,.bnot 2933,.band 2941 2881,.bxor 2940 2942,.badd 2939 2943,.literal (BitVec.ofNat 32 113926993),.badd 2944 2945,.badd 2946 1723,.rotr 2932 2,.rotr 2932 13,.bxor 2948 2949,.rotr 2932 22,.bxor 2950 2951,.band 2932 2906,.band 2932 2880,.bxor 2953 2954,.bxor 2955 2927,.badd 2952 2956,.badd 2947 2957,.badd 2854 2947,.rotr 2959 6,.rotr 2959 11,.bxor 2960 2961,.rotr 2959 25,.bxor 2962 2963,.badd 2881 2964,.band 2959 2933,.bnot 2959,.band 2967 2907,.bxor 2966 2968,.badd 2965 2969,.literal (BitVec.ofNat 32 338241895),.badd 2970 2971,.badd 2972 1736,.rotr 2958 2,.rotr 2958 13,.bxor 2974 2975,.rotr 2958 22,.bxor 2976 2977,.band 2958 2932,.band 2958 2906,.bxor 2979 2980,.bxor 2981 2953,.badd 2978 2982,.badd 2973 2983,.badd 2880 2973,.rotr 2985 6]
theorem partPartition45 : partOps45=ArtifactSharedFrameGroup45.partOps := rfl
theorem partChecked45 : ArtifactSharedFrameGroup45.partBytes=statementBytes 2923 (partOps45.map lower) := by
  rw [partPartition45]
  exact ArtifactSharedFrameGroup45.partChecked
theorem partLength45 : partOps45.length=64 := rfl
def partOps46 : List WordIR.Op := [.rotr 2985 11,.bxor 2986 2987,.rotr 2985 25,.bxor 2988 2989,.badd 2907 2990,.band 2985 2959,.bnot 2985,.band 2993 2933,.bxor 2992 2994,.badd 2991 2995,.literal (BitVec.ofNat 32 666307205),.badd 2996 2997,.badd 2998 1749,.rotr 2984 2,.rotr 2984 13,.bxor 3000 3001,.rotr 2984 22,.bxor 3002 3003,.band 2984 2958,.band 2984 2932,.bxor 3005 3006,.bxor 3007 2979,.badd 3004 3008,.badd 2999 3009,.badd 2906 2999,.rotr 3011 6,.rotr 3011 11,.bxor 3012 3013,.rotr 3011 25,.bxor 3014 3015,.badd 2933 3016,.band 3011 2985,.bnot 3011,.band 3019 2959,.bxor 3018 3020,.badd 3017 3021,.literal (BitVec.ofNat 32 773529912),.badd 3022 3023,.badd 3024 1762,.rotr 3010 2,.rotr 3010 13,.bxor 3026 3027,.rotr 3010 22,.bxor 3028 3029,.band 3010 2984,.band 3010 2958,.bxor 3031 3032,.bxor 3033 3005,.badd 3030 3034,.badd 3025 3035,.badd 2932 3025,.rotr 3037 6,.rotr 3037 11,.bxor 3038 3039,.rotr 3037 25,.bxor 3040 3041,.badd 2959 3042,.band 3037 3011,.bnot 3037,.band 3045 2985,.bxor 3044 3046,.badd 3043 3047,.literal (BitVec.ofNat 32 1294757372),.badd 3048 3049]
theorem partPartition46 : partOps46=ArtifactSharedFrameGroup46.partOps := rfl
theorem partChecked46 : ArtifactSharedFrameGroup46.partBytes=statementBytes 2987 (partOps46.map lower) := by
  rw [partPartition46]
  exact ArtifactSharedFrameGroup46.partChecked
theorem partLength46 : partOps46.length=64 := rfl
def partOps47 : List WordIR.Op := [.badd 3050 1775,.rotr 3036 2,.rotr 3036 13,.bxor 3052 3053,.rotr 3036 22,.bxor 3054 3055,.band 3036 3010,.band 3036 2984,.bxor 3057 3058,.bxor 3059 3031,.badd 3056 3060,.badd 3051 3061,.badd 2958 3051,.rotr 3063 6,.rotr 3063 11,.bxor 3064 3065,.rotr 3063 25,.bxor 3066 3067,.badd 2985 3068,.band 3063 3037,.bnot 3063,.band 3071 3011,.bxor 3070 3072,.badd 3069 3073,.literal (BitVec.ofNat 32 1396182291),.badd 3074 3075,.badd 3076 1788,.rotr 3062 2,.rotr 3062 13,.bxor 3078 3079,.rotr 3062 22,.bxor 3080 3081,.band 3062 3036,.band 3062 3010,.bxor 3083 3084,.bxor 3085 3057,.badd 3082 3086,.badd 3077 3087,.badd 2984 3077,.rotr 3089 6,.rotr 3089 11,.bxor 3090 3091,.rotr 3089 25,.bxor 3092 3093,.badd 3011 3094,.band 3089 3063,.bnot 3089,.band 3097 3037,.bxor 3096 3098,.badd 3095 3099,.literal (BitVec.ofNat 32 1695183700),.badd 3100 3101,.badd 3102 1801,.rotr 3088 2,.rotr 3088 13,.bxor 3104 3105,.rotr 3088 22,.bxor 3106 3107,.band 3088 3062,.band 3088 3036,.bxor 3109 3110,.bxor 3111 3083,.badd 3108 3112,.badd 3103 3113]
theorem partPartition47 : partOps47=ArtifactSharedFrameGroup47.partOps := rfl
theorem partChecked47 : ArtifactSharedFrameGroup47.partBytes=statementBytes 3051 (partOps47.map lower) := by
  rw [partPartition47]
  exact ArtifactSharedFrameGroup47.partChecked
theorem partLength47 : partOps47.length=64 := rfl
def partOps48 : List WordIR.Op := [.badd 3010 3103,.rotr 3115 6,.rotr 3115 11,.bxor 3116 3117,.rotr 3115 25,.bxor 3118 3119,.badd 3037 3120,.band 3115 3089,.bnot 3115,.band 3123 3063,.bxor 3122 3124,.badd 3121 3125,.literal (BitVec.ofNat 32 1986661051),.badd 3126 3127,.badd 3128 1814,.rotr 3114 2,.rotr 3114 13,.bxor 3130 3131,.rotr 3114 22,.bxor 3132 3133,.band 3114 3088,.band 3114 3062,.bxor 3135 3136,.bxor 3137 3109,.badd 3134 3138,.badd 3129 3139,.badd 3036 3129,.rotr 3141 6,.rotr 3141 11,.bxor 3142 3143,.rotr 3141 25,.bxor 3144 3145,.badd 3063 3146,.band 3141 3115,.bnot 3141,.band 3149 3089,.bxor 3148 3150,.badd 3147 3151,.literal (BitVec.ofNat 32 2177026350),.badd 3152 3153,.badd 3154 1827,.rotr 3140 2,.rotr 3140 13,.bxor 3156 3157,.rotr 3140 22,.bxor 3158 3159,.band 3140 3114,.band 3140 3088,.bxor 3161 3162,.bxor 3163 3135,.badd 3160 3164,.badd 3155 3165,.badd 3062 3155,.rotr 3167 6,.rotr 3167 11,.bxor 3168 3169,.rotr 3167 25,.bxor 3170 3171,.badd 3089 3172,.band 3167 3141,.bnot 3167,.band 3175 3115,.bxor 3174 3176,.badd 3173 3177]
theorem partPartition48 : partOps48=ArtifactSharedFrameGroup48.partOps := rfl
theorem partChecked48 : ArtifactSharedFrameGroup48.partBytes=statementBytes 3115 (partOps48.map lower) := by
  rw [partPartition48]
  exact ArtifactSharedFrameGroup48.partChecked
theorem partLength48 : partOps48.length=64 := rfl
def partOps49 : List WordIR.Op := [.literal (BitVec.ofNat 32 2456956037),.badd 3178 3179,.badd 3180 1840,.rotr 3166 2,.rotr 3166 13,.bxor 3182 3183,.rotr 3166 22,.bxor 3184 3185,.band 3166 3140,.band 3166 3114,.bxor 3187 3188,.bxor 3189 3161,.badd 3186 3190,.badd 3181 3191,.badd 3088 3181,.rotr 3193 6,.rotr 3193 11,.bxor 3194 3195,.rotr 3193 25,.bxor 3196 3197,.badd 3115 3198,.band 3193 3167,.bnot 3193,.band 3201 3141,.bxor 3200 3202,.badd 3199 3203,.literal (BitVec.ofNat 32 2730485921),.badd 3204 3205,.badd 3206 1853,.rotr 3192 2,.rotr 3192 13,.bxor 3208 3209,.rotr 3192 22,.bxor 3210 3211,.band 3192 3166,.band 3192 3140,.bxor 3213 3214,.bxor 3215 3187,.badd 3212 3216,.badd 3207 3217,.badd 3114 3207,.rotr 3219 6,.rotr 3219 11,.bxor 3220 3221,.rotr 3219 25,.bxor 3222 3223,.badd 3141 3224,.band 3219 3193,.bnot 3219,.band 3227 3167,.bxor 3226 3228,.badd 3225 3229,.literal (BitVec.ofNat 32 2820302411),.badd 3230 3231,.badd 3232 1866,.rotr 3218 2,.rotr 3218 13,.bxor 3234 3235,.rotr 3218 22,.bxor 3236 3237,.band 3218 3192,.band 3218 3166,.bxor 3239 3240,.bxor 3241 3213]
theorem partPartition49 : partOps49=ArtifactSharedFrameGroup49.partOps := rfl
theorem partChecked49 : ArtifactSharedFrameGroup49.partBytes=statementBytes 3179 (partOps49.map lower) := by
  rw [partPartition49]
  exact ArtifactSharedFrameGroup49.partChecked
theorem partLength49 : partOps49.length=64 := rfl
def partOps50 : List WordIR.Op := [.badd 3238 3242,.badd 3233 3243,.badd 3140 3233,.rotr 3245 6,.rotr 3245 11,.bxor 3246 3247,.rotr 3245 25,.bxor 3248 3249,.badd 3167 3250,.band 3245 3219,.bnot 3245,.band 3253 3193,.bxor 3252 3254,.badd 3251 3255,.literal (BitVec.ofNat 32 3259730800),.badd 3256 3257,.badd 3258 1879,.rotr 3244 2,.rotr 3244 13,.bxor 3260 3261,.rotr 3244 22,.bxor 3262 3263,.band 3244 3218,.band 3244 3192,.bxor 3265 3266,.bxor 3267 3239,.badd 3264 3268,.badd 3259 3269,.badd 3166 3259,.rotr 3271 6,.rotr 3271 11,.bxor 3272 3273,.rotr 3271 25,.bxor 3274 3275,.badd 3193 3276,.band 3271 3245,.bnot 3271,.band 3279 3219,.bxor 3278 3280,.badd 3277 3281,.literal (BitVec.ofNat 32 3345764771),.badd 3282 3283,.badd 3284 1892,.rotr 3270 2,.rotr 3270 13,.bxor 3286 3287,.rotr 3270 22,.bxor 3288 3289,.band 3270 3244,.band 3270 3218,.bxor 3291 3292,.bxor 3293 3265,.badd 3290 3294,.badd 3285 3295,.badd 3192 3285,.rotr 3297 6,.rotr 3297 11,.bxor 3298 3299,.rotr 3297 25,.bxor 3300 3301,.badd 3219 3302,.band 3297 3271,.bnot 3297,.band 3305 3245]
theorem partPartition50 : partOps50=ArtifactSharedFrameGroup50.partOps := rfl
theorem partChecked50 : ArtifactSharedFrameGroup50.partBytes=statementBytes 3243 (partOps50.map lower) := by
  rw [partPartition50]
  exact ArtifactSharedFrameGroup50.partChecked
theorem partLength50 : partOps50.length=64 := rfl
def partOps51 : List WordIR.Op := [.bxor 3304 3306,.badd 3303 3307,.literal (BitVec.ofNat 32 3516065817),.badd 3308 3309,.badd 3310 1905,.rotr 3296 2,.rotr 3296 13,.bxor 3312 3313,.rotr 3296 22,.bxor 3314 3315,.band 3296 3270,.band 3296 3244,.bxor 3317 3318,.bxor 3319 3291,.badd 3316 3320,.badd 3311 3321,.badd 3218 3311,.rotr 3323 6,.rotr 3323 11,.bxor 3324 3325,.rotr 3323 25,.bxor 3326 3327,.badd 3245 3328,.band 3323 3297,.bnot 3323,.band 3331 3271,.bxor 3330 3332,.badd 3329 3333,.literal (BitVec.ofNat 32 3600352804),.badd 3334 3335,.badd 3336 1918,.rotr 3322 2,.rotr 3322 13,.bxor 3338 3339,.rotr 3322 22,.bxor 3340 3341,.band 3322 3296,.band 3322 3270,.bxor 3343 3344,.bxor 3345 3317,.badd 3342 3346,.badd 3337 3347,.badd 3244 3337,.rotr 3349 6,.rotr 3349 11,.bxor 3350 3351,.rotr 3349 25,.bxor 3352 3353,.badd 3271 3354,.band 3349 3323,.bnot 3349,.band 3357 3297,.bxor 3356 3358,.badd 3355 3359,.literal (BitVec.ofNat 32 4094571909),.badd 3360 3361,.badd 3362 1931,.rotr 3348 2,.rotr 3348 13,.bxor 3364 3365,.rotr 3348 22,.bxor 3366 3367,.band 3348 3322,.band 3348 3296]
theorem partPartition51 : partOps51=ArtifactSharedFrameGroup51.partOps := rfl
theorem partChecked51 : ArtifactSharedFrameGroup51.partBytes=statementBytes 3307 (partOps51.map lower) := by
  rw [partPartition51]
  exact ArtifactSharedFrameGroup51.partChecked
theorem partLength51 : partOps51.length=64 := rfl
def partOps52 : List WordIR.Op := [.bxor 3369 3370,.bxor 3371 3343,.badd 3368 3372,.badd 3363 3373,.badd 3270 3363,.rotr 3375 6,.rotr 3375 11,.bxor 3376 3377,.rotr 3375 25,.bxor 3378 3379,.badd 3297 3380,.band 3375 3349,.bnot 3375,.band 3383 3323,.bxor 3382 3384,.badd 3381 3385,.literal (BitVec.ofNat 32 275423344),.badd 3386 3387,.badd 3388 1944,.rotr 3374 2,.rotr 3374 13,.bxor 3390 3391,.rotr 3374 22,.bxor 3392 3393,.band 3374 3348,.band 3374 3322,.bxor 3395 3396,.bxor 3397 3369,.badd 3394 3398,.badd 3389 3399,.badd 3296 3389,.rotr 3401 6,.rotr 3401 11,.bxor 3402 3403,.rotr 3401 25,.bxor 3404 3405,.badd 3323 3406,.band 3401 3375,.bnot 3401,.band 3409 3349,.bxor 3408 3410,.badd 3407 3411,.literal (BitVec.ofNat 32 430227734),.badd 3412 3413,.badd 3414 1957,.rotr 3400 2,.rotr 3400 13,.bxor 3416 3417,.rotr 3400 22,.bxor 3418 3419,.band 3400 3374,.band 3400 3348,.bxor 3421 3422,.bxor 3423 3395,.badd 3420 3424,.badd 3415 3425,.badd 3322 3415,.rotr 3427 6,.rotr 3427 11,.bxor 3428 3429,.rotr 3427 25,.bxor 3430 3431,.badd 3349 3432,.band 3427 3401]
theorem partPartition52 : partOps52=ArtifactSharedFrameGroup52.partOps := rfl
theorem partChecked52 : ArtifactSharedFrameGroup52.partBytes=statementBytes 3371 (partOps52.map lower) := by
  rw [partPartition52]
  exact ArtifactSharedFrameGroup52.partChecked
theorem partLength52 : partOps52.length=64 := rfl
def partOps53 : List WordIR.Op := [.bnot 3427,.band 3435 3375,.bxor 3434 3436,.badd 3433 3437,.literal (BitVec.ofNat 32 506948616),.badd 3438 3439,.badd 3440 1970,.rotr 3426 2,.rotr 3426 13,.bxor 3442 3443,.rotr 3426 22,.bxor 3444 3445,.band 3426 3400,.band 3426 3374,.bxor 3447 3448,.bxor 3449 3421,.badd 3446 3450,.badd 3441 3451,.badd 3348 3441,.rotr 3453 6,.rotr 3453 11,.bxor 3454 3455,.rotr 3453 25,.bxor 3456 3457,.badd 3375 3458,.band 3453 3427,.bnot 3453,.band 3461 3401,.bxor 3460 3462,.badd 3459 3463,.literal (BitVec.ofNat 32 659060556),.badd 3464 3465,.badd 3466 1983,.rotr 3452 2,.rotr 3452 13,.bxor 3468 3469,.rotr 3452 22,.bxor 3470 3471,.band 3452 3426,.band 3452 3400,.bxor 3473 3474,.bxor 3475 3447,.badd 3472 3476,.badd 3467 3477,.badd 3374 3467,.rotr 3479 6,.rotr 3479 11,.bxor 3480 3481,.rotr 3479 25,.bxor 3482 3483,.badd 3401 3484,.band 3479 3453,.bnot 3479,.band 3487 3427,.bxor 3486 3488,.badd 3485 3489,.literal (BitVec.ofNat 32 883997877),.badd 3490 3491,.badd 3492 1996,.rotr 3478 2,.rotr 3478 13,.bxor 3494 3495,.rotr 3478 22,.bxor 3496 3497]
theorem partPartition53 : partOps53=ArtifactSharedFrameGroup53.partOps := rfl
theorem partChecked53 : ArtifactSharedFrameGroup53.partBytes=statementBytes 3435 (partOps53.map lower) := by
  rw [partPartition53]
  exact ArtifactSharedFrameGroup53.partChecked
theorem partLength53 : partOps53.length=64 := rfl
def partOps54 : List WordIR.Op := [.band 3478 3452,.band 3478 3426,.bxor 3499 3500,.bxor 3501 3473,.badd 3498 3502,.badd 3493 3503,.badd 3400 3493,.rotr 3505 6,.rotr 3505 11,.bxor 3506 3507,.rotr 3505 25,.bxor 3508 3509,.badd 3427 3510,.band 3505 3479,.bnot 3505,.band 3513 3453,.bxor 3512 3514,.badd 3511 3515,.literal (BitVec.ofNat 32 958139571),.badd 3516 3517,.badd 3518 2009,.rotr 3504 2,.rotr 3504 13,.bxor 3520 3521,.rotr 3504 22,.bxor 3522 3523,.band 3504 3478,.band 3504 3452,.bxor 3525 3526,.bxor 3527 3499,.badd 3524 3528,.badd 3519 3529,.badd 3426 3519,.rotr 3531 6,.rotr 3531 11,.bxor 3532 3533,.rotr 3531 25,.bxor 3534 3535,.badd 3453 3536,.band 3531 3505,.bnot 3531,.band 3539 3479,.bxor 3538 3540,.badd 3537 3541,.literal (BitVec.ofNat 32 1322822218),.badd 3542 3543,.badd 3544 2022,.rotr 3530 2,.rotr 3530 13,.bxor 3546 3547,.rotr 3530 22,.bxor 3548 3549,.band 3530 3504,.band 3530 3478,.bxor 3551 3552,.bxor 3553 3525,.badd 3550 3554,.badd 3545 3555,.badd 3452 3545,.rotr 3557 6,.rotr 3557 11,.bxor 3558 3559,.rotr 3557 25,.bxor 3560 3561]
theorem partPartition54 : partOps54=ArtifactSharedFrameGroup54.partOps := rfl
theorem partChecked54 : ArtifactSharedFrameGroup54.partBytes=statementBytes 3499 (partOps54.map lower) := by
  rw [partPartition54]
  exact ArtifactSharedFrameGroup54.partChecked
theorem partLength54 : partOps54.length=64 := rfl
def partOps55 : List WordIR.Op := [.badd 3479 3562,.band 3557 3531,.bnot 3557,.band 3565 3505,.bxor 3564 3566,.badd 3563 3567,.literal (BitVec.ofNat 32 1537002063),.badd 3568 3569,.badd 3570 2035,.rotr 3556 2,.rotr 3556 13,.bxor 3572 3573,.rotr 3556 22,.bxor 3574 3575,.band 3556 3530,.band 3556 3504,.bxor 3577 3578,.bxor 3579 3551,.badd 3576 3580,.badd 3571 3581,.badd 3478 3571,.rotr 3583 6,.rotr 3583 11,.bxor 3584 3585,.rotr 3583 25,.bxor 3586 3587,.badd 3505 3588,.band 3583 3557,.bnot 3583,.band 3591 3531,.bxor 3590 3592,.badd 3589 3593,.literal (BitVec.ofNat 32 1747873779),.badd 3594 3595,.badd 3596 2048,.rotr 3582 2,.rotr 3582 13,.bxor 3598 3599,.rotr 3582 22,.bxor 3600 3601,.band 3582 3556,.band 3582 3530,.bxor 3603 3604,.bxor 3605 3577,.badd 3602 3606,.badd 3597 3607,.badd 3504 3597,.rotr 3609 6,.rotr 3609 11,.bxor 3610 3611,.rotr 3609 25,.bxor 3612 3613,.badd 3531 3614,.band 3609 3583,.bnot 3609,.band 3617 3557,.bxor 3616 3618,.badd 3615 3619,.literal (BitVec.ofNat 32 1955562222),.badd 3620 3621,.badd 3622 2061,.rotr 3608 2,.rotr 3608 13,.bxor 3624 3625]
theorem partPartition55 : partOps55=ArtifactSharedFrameGroup55.partOps := rfl
theorem partChecked55 : ArtifactSharedFrameGroup55.partBytes=statementBytes 3563 (partOps55.map lower) := by
  rw [partPartition55]
  exact ArtifactSharedFrameGroup55.partChecked
theorem partLength55 : partOps55.length=64 := rfl
def partOps56 : List WordIR.Op := [.rotr 3608 22,.bxor 3626 3627,.band 3608 3582,.band 3608 3556,.bxor 3629 3630,.bxor 3631 3603,.badd 3628 3632,.badd 3623 3633,.badd 3530 3623,.rotr 3635 6,.rotr 3635 11,.bxor 3636 3637,.rotr 3635 25,.bxor 3638 3639,.badd 3557 3640,.band 3635 3609,.bnot 3635,.band 3643 3583,.bxor 3642 3644,.badd 3641 3645,.literal (BitVec.ofNat 32 2024104815),.badd 3646 3647,.badd 3648 2074,.rotr 3634 2,.rotr 3634 13,.bxor 3650 3651,.rotr 3634 22,.bxor 3652 3653,.band 3634 3608,.band 3634 3582,.bxor 3655 3656,.bxor 3657 3629,.badd 3654 3658,.badd 3649 3659,.badd 3556 3649,.rotr 3661 6,.rotr 3661 11,.bxor 3662 3663,.rotr 3661 25,.bxor 3664 3665,.badd 3583 3666,.band 3661 3635,.bnot 3661,.band 3669 3609,.bxor 3668 3670,.badd 3667 3671,.literal (BitVec.ofNat 32 2227730452),.badd 3672 3673,.badd 3674 2087,.rotr 3660 2,.rotr 3660 13,.bxor 3676 3677,.rotr 3660 22,.bxor 3678 3679,.band 3660 3634,.band 3660 3608,.bxor 3681 3682,.bxor 3683 3655,.badd 3680 3684,.badd 3675 3685,.badd 3582 3675,.rotr 3687 6,.rotr 3687 11,.bxor 3688 3689]
theorem partPartition56 : partOps56=ArtifactSharedFrameGroup56.partOps := rfl
theorem partChecked56 : ArtifactSharedFrameGroup56.partBytes=statementBytes 3627 (partOps56.map lower) := by
  rw [partPartition56]
  exact ArtifactSharedFrameGroup56.partChecked
theorem partLength56 : partOps56.length=64 := rfl
def partOps57 : List WordIR.Op := [.rotr 3687 25,.bxor 3690 3691,.badd 3609 3692,.band 3687 3661,.bnot 3687,.band 3695 3635,.bxor 3694 3696,.badd 3693 3697,.literal (BitVec.ofNat 32 2361852424),.badd 3698 3699,.badd 3700 2100,.rotr 3686 2,.rotr 3686 13,.bxor 3702 3703,.rotr 3686 22,.bxor 3704 3705,.band 3686 3660,.band 3686 3634,.bxor 3707 3708,.bxor 3709 3681,.badd 3706 3710,.badd 3701 3711,.badd 3608 3701,.rotr 3713 6,.rotr 3713 11,.bxor 3714 3715,.rotr 3713 25,.bxor 3716 3717,.badd 3635 3718,.band 3713 3687,.bnot 3713,.band 3721 3661,.bxor 3720 3722,.badd 3719 3723,.literal (BitVec.ofNat 32 2428436474),.badd 3724 3725,.badd 3726 2113,.rotr 3712 2,.rotr 3712 13,.bxor 3728 3729,.rotr 3712 22,.bxor 3730 3731,.band 3712 3686,.band 3712 3660,.bxor 3733 3734,.bxor 3735 3707,.badd 3732 3736,.badd 3727 3737,.badd 3634 3727,.rotr 3739 6,.rotr 3739 11,.bxor 3740 3741,.rotr 3739 25,.bxor 3742 3743,.badd 3661 3744,.band 3739 3713,.bnot 3739,.band 3747 3687,.bxor 3746 3748,.badd 3745 3749,.literal (BitVec.ofNat 32 2756734187),.badd 3750 3751,.badd 3752 2126,.rotr 3738 2]
theorem partPartition57 : partOps57=ArtifactSharedFrameGroup57.partOps := rfl
theorem partChecked57 : ArtifactSharedFrameGroup57.partBytes=statementBytes 3691 (partOps57.map lower) := by
  rw [partPartition57]
  exact ArtifactSharedFrameGroup57.partChecked
theorem partLength57 : partOps57.length=64 := rfl
def partOps58 : List WordIR.Op := [.rotr 3738 13,.bxor 3754 3755,.rotr 3738 22,.bxor 3756 3757,.band 3738 3712,.band 3738 3686,.bxor 3759 3760,.bxor 3761 3733,.badd 3758 3762,.badd 3753 3763,.badd 3660 3753,.rotr 3765 6,.rotr 3765 11,.bxor 3766 3767,.rotr 3765 25,.bxor 3768 3769,.badd 3687 3770,.band 3765 3739,.bnot 3765,.band 3773 3713,.bxor 3772 3774,.badd 3771 3775,.literal (BitVec.ofNat 32 3204031479),.badd 3776 3777,.badd 3778 2139,.rotr 3764 2,.rotr 3764 13,.bxor 3780 3781,.rotr 3764 22,.bxor 3782 3783,.band 3764 3738,.band 3764 3712,.bxor 3785 3786,.bxor 3787 3759,.badd 3784 3788,.badd 3779 3789,.badd 3686 3779,.rotr 3791 6,.rotr 3791 11,.bxor 3792 3793,.rotr 3791 25,.bxor 3794 3795,.badd 3713 3796,.band 3791 3765,.bnot 3791,.band 3799 3739,.bxor 3798 3800,.badd 3797 3801,.literal (BitVec.ofNat 32 3329325298),.badd 3802 3803,.badd 3804 2152,.rotr 3790 2,.rotr 3790 13,.bxor 3806 3807,.rotr 3790 22,.bxor 3808 3809,.band 3790 3764,.band 3790 3738,.bxor 3811 3812,.bxor 3813 3785,.badd 3810 3814,.badd 3805 3815,.badd 3712 3805,.badd 648 3816]
theorem partPartition58 : partOps58=ArtifactSharedFrameGroup58.partOps := rfl
theorem partChecked58 : ArtifactSharedFrameGroup58.partBytes=statementBytes 3755 (partOps58.map lower) := by
  rw [partPartition58]
  exact ArtifactSharedFrameGroup58.partChecked
theorem partLength58 : partOps58.length=64 := rfl
def partOps59 : List WordIR.Op := [.badd 652 3790,.badd 656 3764,.badd 660 3738,.badd 664 3817,.badd 668 3791,.badd 672 3765,.badd 676 3739,.band 645 632,.bxor 850 3826,.bxor 0 43,.band 3828 50,.bxor 3828 50,.badd 3828 50,.bnot 3831,.band 3830 3832,.bxor 3829 3833,.shr 3834 31,.bxor 3835 43,.bxor 3836 641]
theorem partPartition59 : partOps59=ArtifactSharedFrameGroup59.partOps := rfl
theorem partChecked59 : ArtifactSharedFrameGroup59.partBytes=statementBytes 3819 (partOps59.map lower) := by
  rw [partPartition59]
  exact ArtifactSharedFrameGroup59.partChecked
theorem partLength59 : partOps59.length=19 := rfl
def blocks : List (List WordIR.Op) := [partOps0,partOps1,partOps2,partOps3,partOps4,partOps5,partOps6,partOps7,partOps8,partOps9,partOps10,partOps11,partOps12,partOps13,partOps14,partOps15,partOps16,partOps17,partOps18,partOps19,partOps20,partOps21,partOps22,partOps23,partOps24,partOps25,partOps26,partOps27,partOps28,partOps29,partOps30,partOps31,partOps32,partOps33,partOps34,partOps35,partOps36,partOps37,partOps38,partOps39,partOps40,partOps41,partOps42,partOps43,partOps44,partOps45,partOps46,partOps47,partOps48,partOps49,partOps50,partOps51,partOps52,partOps53,partOps54,partOps55,partOps56,partOps57,partOps58,partOps59]
def actualBody : List Bytes := [ArtifactSharedFrameGroup0.partBytes,ArtifactSharedFrameGroup1.partBytes,ArtifactSharedFrameGroup2.partBytes,ArtifactSharedFrameGroup3.partBytes,ArtifactSharedFrameGroup4.partBytes,ArtifactSharedFrameGroup5.partBytes,ArtifactSharedFrameGroup6.partBytes,ArtifactSharedFrameGroup7.partBytes,ArtifactSharedFrameGroup8.partBytes,ArtifactSharedFrameGroup9.partBytes,ArtifactSharedFrameGroup10.partBytes,ArtifactSharedFrameGroup11.partBytes,ArtifactSharedFrameGroup12.partBytes,ArtifactSharedFrameGroup13.partBytes,ArtifactSharedFrameGroup14.partBytes,ArtifactSharedFrameGroup15.partBytes,ArtifactSharedFrameGroup16.partBytes,ArtifactSharedFrameGroup17.partBytes,ArtifactSharedFrameGroup18.partBytes,ArtifactSharedFrameGroup19.partBytes,ArtifactSharedFrameGroup20.partBytes,ArtifactSharedFrameGroup21.partBytes,ArtifactSharedFrameGroup22.partBytes,ArtifactSharedFrameGroup23.partBytes,ArtifactSharedFrameGroup24.partBytes,ArtifactSharedFrameGroup25.partBytes,ArtifactSharedFrameGroup26.partBytes,ArtifactSharedFrameGroup27.partBytes,ArtifactSharedFrameGroup28.partBytes,ArtifactSharedFrameGroup29.partBytes,ArtifactSharedFrameGroup30.partBytes,ArtifactSharedFrameGroup31.partBytes,ArtifactSharedFrameGroup32.partBytes,ArtifactSharedFrameGroup33.partBytes,ArtifactSharedFrameGroup34.partBytes,ArtifactSharedFrameGroup35.partBytes,ArtifactSharedFrameGroup36.partBytes,ArtifactSharedFrameGroup37.partBytes,ArtifactSharedFrameGroup38.partBytes,ArtifactSharedFrameGroup39.partBytes,ArtifactSharedFrameGroup40.partBytes,ArtifactSharedFrameGroup41.partBytes,ArtifactSharedFrameGroup42.partBytes,ArtifactSharedFrameGroup43.partBytes,ArtifactSharedFrameGroup44.partBytes,ArtifactSharedFrameGroup45.partBytes,ArtifactSharedFrameGroup46.partBytes,ArtifactSharedFrameGroup47.partBytes,ArtifactSharedFrameGroup48.partBytes,ArtifactSharedFrameGroup49.partBytes,ArtifactSharedFrameGroup50.partBytes,ArtifactSharedFrameGroup51.partBytes,ArtifactSharedFrameGroup52.partBytes,ArtifactSharedFrameGroup53.partBytes,ArtifactSharedFrameGroup54.partBytes,ArtifactSharedFrameGroup55.partBytes,ArtifactSharedFrameGroup56.partBytes,ArtifactSharedFrameGroup57.partBytes,ArtifactSharedFrameGroup58.partBytes,ArtifactSharedFrameGroup59.partBytes]
def actualHeader : Bytes := ArtifactSharedFrameHeader.actualHeader
def actualFooter : Bytes := ArtifactSharedFrameFooter.actualFooter
def actualBytes : Bytes := actualHeader++actualBody.flatten++actualFooter
theorem partition_checked : SharedFrameProgram.program.operations=blocks.flatten := by
  change SharedFrameProgram.operationsChunks.flatten=blocks.flatten
  apply congrArg List.flatten
  rfl
theorem header_checked : actualHeader=headerBytes 43 125 ∧ actualHeader.length=912 := ArtifactSharedFrameHeader.checked
theorem footer_checked : actualFooter=suffix SharedFrameProgram.program.outputs ∧ actualFooter.length=1382 := ArtifactSharedFrameFooter.checked
theorem body_checked : BlockChain 43 blocks actualBody := by
  unfold blocks actualBody
  apply BlockChain.cons _ _ _ _ _ partChecked0
  simp only [partLength0]
  apply BlockChain.cons _ _ _ _ _ partChecked1
  simp only [partLength1]
  apply BlockChain.cons _ _ _ _ _ partChecked2
  simp only [partLength2]
  apply BlockChain.cons _ _ _ _ _ partChecked3
  simp only [partLength3]
  apply BlockChain.cons _ _ _ _ _ partChecked4
  simp only [partLength4]
  apply BlockChain.cons _ _ _ _ _ partChecked5
  simp only [partLength5]
  apply BlockChain.cons _ _ _ _ _ partChecked6
  simp only [partLength6]
  apply BlockChain.cons _ _ _ _ _ partChecked7
  simp only [partLength7]
  apply BlockChain.cons _ _ _ _ _ partChecked8
  simp only [partLength8]
  apply BlockChain.cons _ _ _ _ _ partChecked9
  simp only [partLength9]
  apply BlockChain.cons _ _ _ _ _ partChecked10
  simp only [partLength10]
  apply BlockChain.cons _ _ _ _ _ partChecked11
  simp only [partLength11]
  apply BlockChain.cons _ _ _ _ _ partChecked12
  simp only [partLength12]
  apply BlockChain.cons _ _ _ _ _ partChecked13
  simp only [partLength13]
  apply BlockChain.cons _ _ _ _ _ partChecked14
  simp only [partLength14]
  apply BlockChain.cons _ _ _ _ _ partChecked15
  simp only [partLength15]
  apply BlockChain.cons _ _ _ _ _ partChecked16
  simp only [partLength16]
  apply BlockChain.cons _ _ _ _ _ partChecked17
  simp only [partLength17]
  apply BlockChain.cons _ _ _ _ _ partChecked18
  simp only [partLength18]
  apply BlockChain.cons _ _ _ _ _ partChecked19
  simp only [partLength19]
  apply BlockChain.cons _ _ _ _ _ partChecked20
  simp only [partLength20]
  apply BlockChain.cons _ _ _ _ _ partChecked21
  simp only [partLength21]
  apply BlockChain.cons _ _ _ _ _ partChecked22
  simp only [partLength22]
  apply BlockChain.cons _ _ _ _ _ partChecked23
  simp only [partLength23]
  apply BlockChain.cons _ _ _ _ _ partChecked24
  simp only [partLength24]
  apply BlockChain.cons _ _ _ _ _ partChecked25
  simp only [partLength25]
  apply BlockChain.cons _ _ _ _ _ partChecked26
  simp only [partLength26]
  apply BlockChain.cons _ _ _ _ _ partChecked27
  simp only [partLength27]
  apply BlockChain.cons _ _ _ _ _ partChecked28
  simp only [partLength28]
  apply BlockChain.cons _ _ _ _ _ partChecked29
  simp only [partLength29]
  apply BlockChain.cons _ _ _ _ _ partChecked30
  simp only [partLength30]
  apply BlockChain.cons _ _ _ _ _ partChecked31
  simp only [partLength31]
  apply BlockChain.cons _ _ _ _ _ partChecked32
  simp only [partLength32]
  apply BlockChain.cons _ _ _ _ _ partChecked33
  simp only [partLength33]
  apply BlockChain.cons _ _ _ _ _ partChecked34
  simp only [partLength34]
  apply BlockChain.cons _ _ _ _ _ partChecked35
  simp only [partLength35]
  apply BlockChain.cons _ _ _ _ _ partChecked36
  simp only [partLength36]
  apply BlockChain.cons _ _ _ _ _ partChecked37
  simp only [partLength37]
  apply BlockChain.cons _ _ _ _ _ partChecked38
  simp only [partLength38]
  apply BlockChain.cons _ _ _ _ _ partChecked39
  simp only [partLength39]
  apply BlockChain.cons _ _ _ _ _ partChecked40
  simp only [partLength40]
  apply BlockChain.cons _ _ _ _ _ partChecked41
  simp only [partLength41]
  apply BlockChain.cons _ _ _ _ _ partChecked42
  simp only [partLength42]
  apply BlockChain.cons _ _ _ _ _ partChecked43
  simp only [partLength43]
  apply BlockChain.cons _ _ _ _ _ partChecked44
  simp only [partLength44]
  apply BlockChain.cons _ _ _ _ _ partChecked45
  simp only [partLength45]
  apply BlockChain.cons _ _ _ _ _ partChecked46
  simp only [partLength46]
  apply BlockChain.cons _ _ _ _ _ partChecked47
  simp only [partLength47]
  apply BlockChain.cons _ _ _ _ _ partChecked48
  simp only [partLength48]
  apply BlockChain.cons _ _ _ _ _ partChecked49
  simp only [partLength49]
  apply BlockChain.cons _ _ _ _ _ partChecked50
  simp only [partLength50]
  apply BlockChain.cons _ _ _ _ _ partChecked51
  simp only [partLength51]
  apply BlockChain.cons _ _ _ _ _ partChecked52
  simp only [partLength52]
  apply BlockChain.cons _ _ _ _ _ partChecked53
  simp only [partLength53]
  apply BlockChain.cons _ _ _ _ _ partChecked54
  simp only [partLength54]
  apply BlockChain.cons _ _ _ _ _ partChecked55
  simp only [partLength55]
  apply BlockChain.cons _ _ _ _ _ partChecked56
  simp only [partLength56]
  apply BlockChain.cons _ _ _ _ _ partChecked57
  simp only [partLength57]
  apply BlockChain.cons _ _ _ _ _ partChecked58
  simp only [partLength58]
  apply BlockChain.cons _ _ _ _ _ partChecked59
  simp only [partLength59]
  exact .empty _
theorem actual_size : actualBytes.length≤8388608 := by
  simp only [actualBytes,List.length_append,WordSource.chunk_sizes_exact,actualBody,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,header_checked.2,footer_checked.2,ArtifactSharedFrameGroup0.partSize,ArtifactSharedFrameGroup1.partSize,ArtifactSharedFrameGroup2.partSize,ArtifactSharedFrameGroup3.partSize,ArtifactSharedFrameGroup4.partSize,ArtifactSharedFrameGroup5.partSize,ArtifactSharedFrameGroup6.partSize,ArtifactSharedFrameGroup7.partSize,ArtifactSharedFrameGroup8.partSize,ArtifactSharedFrameGroup9.partSize,ArtifactSharedFrameGroup10.partSize,ArtifactSharedFrameGroup11.partSize,ArtifactSharedFrameGroup12.partSize,ArtifactSharedFrameGroup13.partSize,ArtifactSharedFrameGroup14.partSize,ArtifactSharedFrameGroup15.partSize,ArtifactSharedFrameGroup16.partSize,ArtifactSharedFrameGroup17.partSize,ArtifactSharedFrameGroup18.partSize,ArtifactSharedFrameGroup19.partSize,ArtifactSharedFrameGroup20.partSize,ArtifactSharedFrameGroup21.partSize,ArtifactSharedFrameGroup22.partSize,ArtifactSharedFrameGroup23.partSize,ArtifactSharedFrameGroup24.partSize,ArtifactSharedFrameGroup25.partSize,ArtifactSharedFrameGroup26.partSize,ArtifactSharedFrameGroup27.partSize,ArtifactSharedFrameGroup28.partSize,ArtifactSharedFrameGroup29.partSize,ArtifactSharedFrameGroup30.partSize,ArtifactSharedFrameGroup31.partSize,ArtifactSharedFrameGroup32.partSize,ArtifactSharedFrameGroup33.partSize,ArtifactSharedFrameGroup34.partSize,ArtifactSharedFrameGroup35.partSize,ArtifactSharedFrameGroup36.partSize,ArtifactSharedFrameGroup37.partSize,ArtifactSharedFrameGroup38.partSize,ArtifactSharedFrameGroup39.partSize,ArtifactSharedFrameGroup40.partSize,ArtifactSharedFrameGroup41.partSize,ArtifactSharedFrameGroup42.partSize,ArtifactSharedFrameGroup43.partSize,ArtifactSharedFrameGroup44.partSize,ArtifactSharedFrameGroup45.partSize,ArtifactSharedFrameGroup46.partSize,ArtifactSharedFrameGroup47.partSize,ArtifactSharedFrameGroup48.partSize,ArtifactSharedFrameGroup49.partSize,ArtifactSharedFrameGroup50.partSize,ArtifactSharedFrameGroup51.partSize,ArtifactSharedFrameGroup52.partSize,ArtifactSharedFrameGroup53.partSize,ArtifactSharedFrameGroup54.partSize,ArtifactSharedFrameGroup55.partSize,ArtifactSharedFrameGroup56.partSize,ArtifactSharedFrameGroup57.partSize,ArtifactSharedFrameGroup58.partSize,ArtifactSharedFrameGroup59.partSize]
  decide
theorem actual_validated : validate SharedFrameProgram.program actualBytes=true :=
  validate_from_facts SharedFrameProgram.program actualBytes SharedFrameProgram.safe_checked
    (assembled_bytes_exact SharedFrameProgram.program blocks partition_checked actualHeader actualFooter actualBody header_checked.1 footer_checked.1 body_checked) actual_size
theorem actual_meaning (inputs : Nat → WordIR.Word) : NativeDenotes actualBytes inputs (SharedFrameProgram.program.eval inputs) := by
  have result:=actual_bytes_sound SharedFrameProgram.program actualBytes actual_validated inputs
  exact result
end ArtifactSharedFrameBlocks
