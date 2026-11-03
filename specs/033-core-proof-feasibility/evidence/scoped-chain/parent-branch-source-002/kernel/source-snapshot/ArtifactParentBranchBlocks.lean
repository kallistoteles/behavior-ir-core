import ArtifactParentBranchFooter
import Core033.ParentBranchEncoding
import ArtifactParentBranchHeader
import ArtifactParentBranchGroup0
import ArtifactParentBranchGroup1
import ArtifactParentBranchGroup2
import ArtifactParentBranchGroup3
import ArtifactParentBranchGroup4
import ArtifactParentBranchGroup5
import ArtifactParentBranchGroup6
import ArtifactParentBranchGroup7
import ArtifactParentBranchGroup8
import ArtifactParentBranchGroup9
import ArtifactParentBranchGroup10
import ArtifactParentBranchGroup11
import ArtifactParentBranchGroup12
namespace ArtifactParentBranchBlocks
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def partOps0 : List WordIR.Op := [.badd 18 20,.badd 19 21,.band 18 20,.bxor 18 20,.badd 18 20,.bnot 30,.band 29 31,.bxor 28 32,.shr 33 31,.badd 27 34,.literal (BitVec.ofNat 32 0),.bnot 36,.band 19 37,.literal (BitVec.ofNat 32 0),.bnot 39,.bxor 19 40,.literal (BitVec.ofNat 32 0),.bnot 42,.badd 19 43,.bnot 44,.band 41 45,.bxor 38 46,.shr 47 31,.literal (BitVec.ofNat 32 1),.bxor 48 49,.literal (BitVec.ofNat 32 1048576),.bnot 51,.band 18 52,.literal (BitVec.ofNat 32 1048576),.bnot 54,.bxor 18 55,.literal (BitVec.ofNat 32 1048576),.bnot 57,.badd 18 58,.bnot 59,.band 56 60,.bxor 53 61,.shr 62 31,.literal (BitVec.ofNat 32 1),.bxor 63 64,.band 50 65,.literal (BitVec.ofNat 32 0),.bnot 67,.band 21 68,.literal (BitVec.ofNat 32 0),.bnot 70,.bxor 21 71,.literal (BitVec.ofNat 32 0),.bnot 73,.badd 21 74,.bnot 75,.band 72 76,.bxor 69 77,.shr 78 31,.literal (BitVec.ofNat 32 1),.bxor 79 80,.literal (BitVec.ofNat 32 1048576),.bnot 82,.band 20 83,.literal (BitVec.ofNat 32 1048576),.bnot 85,.bxor 20 86,.literal (BitVec.ofNat 32 1048576),.bnot 88]
theorem partPartition0 : partOps0=ArtifactParentBranchGroup0.partOps := rfl
theorem partChecked0 : ArtifactParentBranchGroup0.partBytes=statementBytes 26 (partOps0.map lower) := by
  rw [partPartition0]
  exact ArtifactParentBranchGroup0.partChecked
theorem partLength0 : partOps0.length=64 := rfl
def partOps1 : List WordIR.Op := [.badd 20 89,.bnot 90,.band 87 91,.bxor 84 92,.shr 93 31,.literal (BitVec.ofNat 32 1),.bxor 94 95,.band 81 96,.band 66 97,.badd 19 21,.band 18 20,.bxor 18 20,.badd 18 20,.bnot 102,.band 101 103,.bxor 100 104,.shr 105 31,.badd 99 106,.literal (BitVec.ofNat 32 0),.bnot 108,.band 107 109,.badd 19 21,.band 18 20,.bxor 18 20,.badd 18 20,.bnot 114,.band 113 115,.bxor 112 116,.shr 117 31,.badd 111 118,.literal (BitVec.ofNat 32 0),.bnot 120,.bxor 119 121,.badd 19 21,.band 18 20,.bxor 18 20,.badd 18 20,.bnot 126,.band 125 127,.bxor 124 128,.shr 129 31,.badd 123 130,.literal (BitVec.ofNat 32 0),.bnot 132,.badd 131 133,.bnot 134,.band 122 135,.bxor 110 136,.shr 137 31,.literal (BitVec.ofNat 32 1),.bxor 138 139,.badd 18 20,.literal (BitVec.ofNat 32 1048576),.bnot 142,.band 141 143,.badd 18 20,.literal (BitVec.ofNat 32 1048576),.bnot 146,.bxor 145 147,.badd 18 20,.literal (BitVec.ofNat 32 1048576),.bnot 150,.badd 149 151,.bnot 152]
theorem partPartition1 : partOps1=ArtifactParentBranchGroup1.partOps := rfl
theorem partChecked1 : ArtifactParentBranchGroup1.partBytes=statementBytes 90 (partOps1.map lower) := by
  rw [partPartition1]
  exact ArtifactParentBranchGroup1.partChecked
theorem partLength1 : partOps1.length=64 := rfl
def partOps2 : List WordIR.Op := [.band 148 153,.bxor 144 154,.shr 155 31,.literal (BitVec.ofNat 32 1),.bxor 156 157,.band 140 158,.band 98 159,.band 22 23,.band 24 25,.shr 22 1,.literal (BitVec.ofNat 32 0),.bnot 164,.band 163 165,.shr 22 1,.literal (BitVec.ofNat 32 0),.bnot 168,.bxor 167 169,.shr 22 1,.literal (BitVec.ofNat 32 0),.bnot 172,.badd 171 173,.bnot 174,.band 170 175,.bxor 166 176,.shr 177 31,.literal (BitVec.ofNat 32 1),.bxor 178 179,.shr 23 1,.literal (BitVec.ofNat 32 0),.bnot 182,.band 181 183,.shr 23 1,.literal (BitVec.ofNat 32 0),.bnot 186,.bxor 185 187,.shr 23 1,.literal (BitVec.ofNat 32 0),.bnot 190,.badd 189 191,.bnot 192,.band 188 193,.bxor 184 194,.shr 195 31,.literal (BitVec.ofNat 32 1),.bxor 196 197,.shr 24 1,.literal (BitVec.ofNat 32 0),.bnot 200,.band 199 201,.shr 24 1,.literal (BitVec.ofNat 32 0),.bnot 204,.bxor 203 205,.shr 24 1,.literal (BitVec.ofNat 32 0),.bnot 208,.badd 207 209,.bnot 210,.band 206 211,.bxor 202 212,.shr 213 31,.literal (BitVec.ofNat 32 1),.bxor 214 215,.shr 25 1]
theorem partPartition2 : partOps2=ArtifactParentBranchGroup2.partOps := rfl
theorem partChecked2 : ArtifactParentBranchGroup2.partBytes=statementBytes 154 (partOps2.map lower) := by
  rw [partPartition2]
  exact ArtifactParentBranchGroup2.partChecked
theorem partLength2 : partOps2.length=64 := rfl
def partOps3 : List WordIR.Op := [.literal (BitVec.ofNat 32 0),.bnot 218,.band 217 219,.shr 25 1,.literal (BitVec.ofNat 32 0),.bnot 222,.bxor 221 223,.shr 25 1,.literal (BitVec.ofNat 32 0),.bnot 226,.badd 225 227,.bnot 228,.band 224 229,.bxor 220 230,.shr 231 31,.literal (BitVec.ofNat 32 1),.bxor 232 233,.literal (BitVec.ofNat 32 99),.literal (BitVec.ofNat 32 111),.literal (BitVec.ofNat 32 114),.literal (BitVec.ofNat 32 101),.literal (BitVec.ofNat 32 48),.literal (BitVec.ofNat 32 51),.literal (BitVec.ofNat 32 51),.literal (BitVec.ofNat 32 46),.literal (BitVec.ofNat 32 115),.literal (BitVec.ofNat 32 101),.literal (BitVec.ofNat 32 109),.literal (BitVec.ofNat 32 97),.literal (BitVec.ofNat 32 110),.literal (BitVec.ofNat 32 116),.literal (BitVec.ofNat 32 105),.literal (BitVec.ofNat 32 99),.literal (BitVec.ofNat 32 46),.literal (BitVec.ofNat 32 118),.literal (BitVec.ofNat 32 49),.literal (BitVec.ofNat 32 0),.literal (BitVec.ofNat 32 81),.literal (BitVec.ofNat 32 0),.shr 0 0,.literal (BitVec.ofNat 32 255),.band 257 258,.shr 1 0,.literal (BitVec.ofNat 32 255),.band 260 261,.shr 1 8,.literal (BitVec.ofNat 32 255),.band 263 264,.shr 2 0,.literal (BitVec.ofNat 32 255),.band 266 267,.shr 2 8,.literal (BitVec.ofNat 32 255),.band 269 270,.shr 2 16,.literal (BitVec.ofNat 32 255),.band 272 273,.shr 2 24,.literal (BitVec.ofNat 32 255),.band 275 276,.shr 3 0,.literal (BitVec.ofNat 32 255),.band 278 279,.shr 3 8]
theorem partPartition3 : partOps3=ArtifactParentBranchGroup3.partOps := rfl
theorem partChecked3 : ArtifactParentBranchGroup3.partBytes=statementBytes 218 (partOps3.map lower) := by
  rw [partPartition3]
  exact ArtifactParentBranchGroup3.partChecked
theorem partLength3 : partOps3.length=64 := rfl
def partOps4 : List WordIR.Op := [.literal (BitVec.ofNat 32 255),.band 281 282,.shr 3 16,.literal (BitVec.ofNat 32 255),.band 284 285,.shr 3 24,.literal (BitVec.ofNat 32 255),.band 287 288,.shr 4 0,.literal (BitVec.ofNat 32 255),.band 290 291,.shr 4 8,.literal (BitVec.ofNat 32 255),.band 293 294,.shr 4 16,.literal (BitVec.ofNat 32 255),.band 296 297,.shr 4 24,.literal (BitVec.ofNat 32 255),.band 299 300,.shr 5 0,.literal (BitVec.ofNat 32 255),.band 302 303,.shr 5 8,.literal (BitVec.ofNat 32 255),.band 305 306,.shr 5 16,.literal (BitVec.ofNat 32 255),.band 308 309,.shr 5 24,.literal (BitVec.ofNat 32 255),.band 311 312,.shr 6 0,.literal (BitVec.ofNat 32 255),.band 314 315,.shr 6 8,.literal (BitVec.ofNat 32 255),.band 317 318,.shr 6 16,.literal (BitVec.ofNat 32 255),.band 320 321,.shr 6 24,.literal (BitVec.ofNat 32 255),.band 323 324,.shr 7 0,.literal (BitVec.ofNat 32 255),.band 326 327,.shr 7 8,.literal (BitVec.ofNat 32 255),.band 329 330,.shr 7 16,.literal (BitVec.ofNat 32 255),.band 332 333,.shr 7 24,.literal (BitVec.ofNat 32 255),.band 335 336,.shr 8 0,.literal (BitVec.ofNat 32 255),.band 338 339,.shr 8 8,.literal (BitVec.ofNat 32 255),.band 341 342,.shr 8 16,.literal (BitVec.ofNat 32 255)]
theorem partPartition4 : partOps4=ArtifactParentBranchGroup4.partOps := rfl
theorem partChecked4 : ArtifactParentBranchGroup4.partBytes=statementBytes 282 (partOps4.map lower) := by
  rw [partPartition4]
  exact ArtifactParentBranchGroup4.partChecked
theorem partLength4 : partOps4.length=64 := rfl
def partOps5 : List WordIR.Op := [.band 344 345,.shr 8 24,.literal (BitVec.ofNat 32 255),.band 347 348,.shr 9 0,.literal (BitVec.ofNat 32 255),.band 350 351,.shr 9 8,.literal (BitVec.ofNat 32 255),.band 353 354,.shr 9 16,.literal (BitVec.ofNat 32 255),.band 356 357,.shr 9 24,.literal (BitVec.ofNat 32 255),.band 359 360,.shr 10 0,.literal (BitVec.ofNat 32 255),.band 362 363,.shr 10 8,.literal (BitVec.ofNat 32 255),.band 365 366,.shr 10 16,.literal (BitVec.ofNat 32 255),.band 368 369,.shr 10 24,.literal (BitVec.ofNat 32 255),.band 371 372,.shr 11 0,.literal (BitVec.ofNat 32 255),.band 374 375,.shr 11 8,.literal (BitVec.ofNat 32 255),.band 377 378,.shr 11 16,.literal (BitVec.ofNat 32 255),.band 380 381,.shr 11 24,.literal (BitVec.ofNat 32 255),.band 383 384,.shr 12 0,.literal (BitVec.ofNat 32 255),.band 386 387,.shr 12 8,.literal (BitVec.ofNat 32 255),.band 389 390,.shr 12 16,.literal (BitVec.ofNat 32 255),.band 392 393,.shr 12 24,.literal (BitVec.ofNat 32 255),.band 395 396,.shr 13 0,.literal (BitVec.ofNat 32 255),.band 398 399,.shr 13 8,.literal (BitVec.ofNat 32 255),.band 401 402,.shr 13 16,.literal (BitVec.ofNat 32 255),.band 404 405,.shr 13 24,.literal (BitVec.ofNat 32 255),.band 407 408]
theorem partPartition5 : partOps5=ArtifactParentBranchGroup5.partOps := rfl
theorem partChecked5 : ArtifactParentBranchGroup5.partBytes=statementBytes 346 (partOps5.map lower) := by
  rw [partPartition5]
  exact ArtifactParentBranchGroup5.partChecked
theorem partLength5 : partOps5.length=64 := rfl
def partOps6 : List WordIR.Op := [.shr 14 0,.literal (BitVec.ofNat 32 255),.band 410 411,.shr 14 8,.literal (BitVec.ofNat 32 255),.band 413 414,.shr 14 16,.literal (BitVec.ofNat 32 255),.band 416 417,.shr 14 24,.literal (BitVec.ofNat 32 255),.band 419 420,.shr 15 0,.literal (BitVec.ofNat 32 255),.band 422 423,.shr 15 8,.literal (BitVec.ofNat 32 255),.band 425 426,.shr 15 16,.literal (BitVec.ofNat 32 255),.band 428 429,.shr 15 24,.literal (BitVec.ofNat 32 255),.band 431 432,.shr 16 0,.literal (BitVec.ofNat 32 255),.band 434 435,.shr 16 8,.literal (BitVec.ofNat 32 255),.band 437 438,.shr 16 16,.literal (BitVec.ofNat 32 255),.band 440 441,.shr 16 24,.literal (BitVec.ofNat 32 255),.band 443 444,.shr 17 0,.literal (BitVec.ofNat 32 255),.band 446 447,.shr 17 8,.literal (BitVec.ofNat 32 255),.band 449 450,.shr 17 16,.literal (BitVec.ofNat 32 255),.band 452 453,.shr 17 24,.literal (BitVec.ofNat 32 255),.band 455 456,.shr 18 0,.literal (BitVec.ofNat 32 255),.band 458 459,.shr 18 8,.literal (BitVec.ofNat 32 255),.band 461 462,.shr 18 16,.literal (BitVec.ofNat 32 255),.band 464 465,.shr 18 24,.literal (BitVec.ofNat 32 255),.band 467 468,.shr 19 0,.literal (BitVec.ofNat 32 255),.band 470 471,.shr 19 8]
theorem partPartition6 : partOps6=ArtifactParentBranchGroup6.partOps := rfl
theorem partChecked6 : ArtifactParentBranchGroup6.partBytes=statementBytes 410 (partOps6.map lower) := by
  rw [partPartition6]
  exact ArtifactParentBranchGroup6.partChecked
theorem partLength6 : partOps6.length=64 := rfl
def partOps7 : List WordIR.Op := [.literal (BitVec.ofNat 32 255),.band 473 474,.shr 19 16,.literal (BitVec.ofNat 32 255),.band 476 477,.shr 19 24,.literal (BitVec.ofNat 32 255),.band 479 480,.shr 20 0,.literal (BitVec.ofNat 32 255),.band 482 483,.shr 20 8,.literal (BitVec.ofNat 32 255),.band 485 486,.shr 20 16,.literal (BitVec.ofNat 32 255),.band 488 489,.shr 20 24,.literal (BitVec.ofNat 32 255),.band 491 492,.shr 21 0,.literal (BitVec.ofNat 32 255),.band 494 495,.shr 21 8,.literal (BitVec.ofNat 32 255),.band 497 498,.shr 21 16,.literal (BitVec.ofNat 32 255),.band 500 501,.shr 21 24,.literal (BitVec.ofNat 32 255),.band 503 504,.shr 26 0,.literal (BitVec.ofNat 32 255),.band 506 507,.shr 26 8,.literal (BitVec.ofNat 32 255),.band 509 510,.shr 26 16,.literal (BitVec.ofNat 32 255),.band 512 513,.shr 26 24,.literal (BitVec.ofNat 32 255),.band 515 516,.shr 35 0,.literal (BitVec.ofNat 32 255),.band 518 519,.shr 35 8,.literal (BitVec.ofNat 32 255),.band 521 522,.shr 35 16,.literal (BitVec.ofNat 32 255),.band 524 525,.shr 35 24,.literal (BitVec.ofNat 32 255),.band 527 528,.shr 161 0,.literal (BitVec.ofNat 32 255),.band 530 531,.shr 162 0,.literal (BitVec.ofNat 32 255),.band 533 534,.literal (BitVec.ofNat 32 0),.bnot 536]
theorem partPartition7 : partOps7=ArtifactParentBranchGroup7.partOps := rfl
theorem partChecked7 : ArtifactParentBranchGroup7.partBytes=statementBytes 474 (partOps7.map lower) := by
  rw [partPartition7]
  exact ArtifactParentBranchGroup7.partChecked
theorem partLength7 : partOps7.length=64 := rfl
def partOps8 : List WordIR.Op := [.band 0 537,.literal (BitVec.ofNat 32 0),.bnot 539,.bxor 0 540,.literal (BitVec.ofNat 32 0),.bnot 542,.badd 0 543,.bnot 544,.band 541 545,.bxor 538 546,.shr 547 31,.literal (BitVec.ofNat 32 3),.bnot 0,.band 549 550,.literal (BitVec.ofNat 32 3),.bnot 0,.bxor 552 553,.literal (BitVec.ofNat 32 3),.bnot 0,.badd 555 556,.bnot 557,.band 554 558,.bxor 551 559,.shr 560 31,.band 548 561,.shr 1 8,.literal (BitVec.ofNat 32 0),.bnot 564,.band 563 565,.shr 1 8,.literal (BitVec.ofNat 32 0),.bnot 568,.bxor 567 569,.shr 1 8,.literal (BitVec.ofNat 32 0),.bnot 572,.badd 571 573,.bnot 574,.band 570 575,.bxor 566 576,.shr 577 31,.literal (BitVec.ofNat 32 1),.bxor 578 579,.shr 161 1,.literal (BitVec.ofNat 32 0),.bnot 582,.band 581 583,.shr 161 1,.literal (BitVec.ofNat 32 0),.bnot 586,.bxor 585 587,.shr 161 1,.literal (BitVec.ofNat 32 0),.bnot 590,.badd 589 591,.bnot 592,.band 588 593,.bxor 584 594,.shr 595 31,.literal (BitVec.ofNat 32 1),.bxor 596 597,.shr 162 1,.literal (BitVec.ofNat 32 0),.bnot 600]
theorem partPartition8 : partOps8=ArtifactParentBranchGroup8.partOps := rfl
theorem partChecked8 : ArtifactParentBranchGroup8.partBytes=statementBytes 538 (partOps8.map lower) := by
  rw [partPartition8]
  exact ArtifactParentBranchGroup8.partChecked
theorem partLength8 : partOps8.length=64 := rfl
def partOps9 : List WordIR.Op := [.band 599 601,.shr 162 1,.literal (BitVec.ofNat 32 0),.bnot 604,.bxor 603 605,.shr 162 1,.literal (BitVec.ofNat 32 0),.bnot 608,.badd 607 609,.bnot 610,.band 606 611,.bxor 602 612,.shr 613 31,.literal (BitVec.ofNat 32 1),.bxor 614 615,.badd 18 20,.bxor 617 26,.literal (BitVec.ofNat 32 0),.bnot 619,.band 618 620,.badd 18 20,.bxor 622 26,.literal (BitVec.ofNat 32 0),.bnot 624,.bxor 623 625,.badd 18 20,.bxor 627 26,.literal (BitVec.ofNat 32 0),.bnot 629,.badd 628 630,.bnot 631,.band 626 632,.bxor 621 633,.shr 634 31,.literal (BitVec.ofNat 32 1),.bxor 635 636,.badd 19 21,.band 18 20,.bxor 18 20,.badd 18 20,.bnot 641,.band 640 642,.bxor 639 643,.shr 644 31,.badd 638 645,.bxor 646 35,.literal (BitVec.ofNat 32 0),.bnot 648,.band 647 649,.badd 19 21,.band 18 20,.bxor 18 20,.badd 18 20,.bnot 654,.band 653 655,.bxor 652 656,.shr 657 31,.badd 651 658,.bxor 659 35,.literal (BitVec.ofNat 32 0),.bnot 661,.bxor 660 662,.badd 19 21,.band 18 20]
theorem partPartition9 : partOps9=ArtifactParentBranchGroup9.partOps := rfl
theorem partChecked9 : ArtifactParentBranchGroup9.partBytes=statementBytes 602 (partOps9.map lower) := by
  rw [partPartition9]
  exact ArtifactParentBranchGroup9.partChecked
theorem partLength9 : partOps9.length=64 := rfl
def partOps10 : List WordIR.Op := [.bxor 18 20,.badd 18 20,.bnot 667,.band 666 668,.bxor 665 669,.shr 670 31,.badd 664 671,.bxor 672 35,.literal (BitVec.ofNat 32 0),.bnot 674,.badd 673 675,.bnot 676,.band 663 677,.bxor 650 678,.shr 679 31,.literal (BitVec.ofNat 32 1),.bxor 680 681,.literal (BitVec.ofNat 32 0),.bnot 683,.band 19 684,.literal (BitVec.ofNat 32 0),.bnot 686,.bxor 19 687,.literal (BitVec.ofNat 32 0),.bnot 689,.badd 19 690,.bnot 691,.band 688 692,.bxor 685 693,.shr 694 31,.literal (BitVec.ofNat 32 1),.bxor 695 696,.literal (BitVec.ofNat 32 1048576),.bnot 698,.band 18 699,.literal (BitVec.ofNat 32 1048576),.bnot 701,.bxor 18 702,.literal (BitVec.ofNat 32 1048576),.bnot 704,.badd 18 705,.bnot 706,.band 703 707,.bxor 700 708,.shr 709 31,.literal (BitVec.ofNat 32 1),.bxor 710 711,.band 697 712,.literal (BitVec.ofNat 32 0),.bnot 714,.band 21 715,.literal (BitVec.ofNat 32 0),.bnot 717,.bxor 21 718,.literal (BitVec.ofNat 32 0),.bnot 720,.badd 21 721,.bnot 722,.band 719 723,.bxor 716 724,.shr 725 31,.literal (BitVec.ofNat 32 1),.bxor 726 727,.literal (BitVec.ofNat 32 1048576)]
theorem partPartition10 : partOps10=ArtifactParentBranchGroup10.partOps := rfl
theorem partChecked10 : ArtifactParentBranchGroup10.partBytes=statementBytes 666 (partOps10.map lower) := by
  rw [partPartition10]
  exact ArtifactParentBranchGroup10.partChecked
theorem partLength10 : partOps10.length=64 := rfl
def partOps11 : List WordIR.Op := [.bnot 729,.band 20 730,.literal (BitVec.ofNat 32 1048576),.bnot 732,.bxor 20 733,.literal (BitVec.ofNat 32 1048576),.bnot 735,.badd 20 736,.bnot 737,.band 734 738,.bxor 731 739,.shr 740 31,.literal (BitVec.ofNat 32 1),.bxor 741 742,.band 728 743,.band 713 744,.badd 19 21,.band 18 20,.bxor 18 20,.badd 18 20,.bnot 749,.band 748 750,.bxor 747 751,.shr 752 31,.badd 746 753,.literal (BitVec.ofNat 32 0),.bnot 755,.band 754 756,.badd 19 21,.band 18 20,.bxor 18 20,.badd 18 20,.bnot 761,.band 760 762,.bxor 759 763,.shr 764 31,.badd 758 765,.literal (BitVec.ofNat 32 0),.bnot 767,.bxor 766 768,.badd 19 21,.band 18 20,.bxor 18 20,.badd 18 20,.bnot 773,.band 772 774,.bxor 771 775,.shr 776 31,.badd 770 777,.literal (BitVec.ofNat 32 0),.bnot 779,.badd 778 780,.bnot 781,.band 769 782,.bxor 757 783,.shr 784 31,.literal (BitVec.ofNat 32 1),.bxor 785 786,.badd 18 20,.literal (BitVec.ofNat 32 1048576),.bnot 789,.band 788 790,.badd 18 20,.literal (BitVec.ofNat 32 1048576)]
theorem partPartition11 : partOps11=ArtifactParentBranchGroup11.partOps := rfl
theorem partChecked11 : ArtifactParentBranchGroup11.partBytes=statementBytes 730 (partOps11.map lower) := by
  rw [partPartition11]
  exact ArtifactParentBranchGroup11.partChecked
theorem partLength11 : partOps11.length=64 := rfl
def partOps12 : List WordIR.Op := [.bnot 793,.bxor 792 794,.badd 18 20,.literal (BitVec.ofNat 32 1048576),.bnot 797,.badd 796 798,.bnot 799,.band 795 800,.bxor 791 801,.shr 802 31,.literal (BitVec.ofNat 32 1),.bxor 803 804,.band 787 805,.band 745 806]
theorem partPartition12 : partOps12=ArtifactParentBranchGroup12.partOps := rfl
theorem partChecked12 : ArtifactParentBranchGroup12.partBytes=statementBytes 794 (partOps12.map lower) := by
  rw [partPartition12]
  exact ArtifactParentBranchGroup12.partChecked
theorem partLength12 : partOps12.length=14 := rfl
def blocks : List (List WordIR.Op) := [partOps0,partOps1,partOps2,partOps3,partOps4,partOps5,partOps6,partOps7,partOps8,partOps9,partOps10,partOps11,partOps12]
def actualBody : List Bytes := [ArtifactParentBranchGroup0.partBytes,ArtifactParentBranchGroup1.partBytes,ArtifactParentBranchGroup2.partBytes,ArtifactParentBranchGroup3.partBytes,ArtifactParentBranchGroup4.partBytes,ArtifactParentBranchGroup5.partBytes,ArtifactParentBranchGroup6.partBytes,ArtifactParentBranchGroup7.partBytes,ArtifactParentBranchGroup8.partBytes,ArtifactParentBranchGroup9.partBytes,ArtifactParentBranchGroup10.partBytes,ArtifactParentBranchGroup11.partBytes,ArtifactParentBranchGroup12.partBytes]
def actualHeader : Bytes := ArtifactParentBranchHeader.actualHeader
def actualFooter : Bytes := ArtifactParentBranchFooter.actualFooter
def actualBytes : Bytes := actualHeader++actualBody.flatten++actualFooter
theorem partition_checked : ActualParentBranchIR.program.operations=blocks.flatten := rfl
theorem header_checked : actualHeader=headerBytes 26 127 ∧ actualHeader.length=572 := ArtifactParentBranchHeader.checked
theorem footer_checked : actualFooter=suffix ActualParentBranchIR.program.outputs ∧ actualFooter.length=1404 := ArtifactParentBranchFooter.checked
theorem body_checked : BlockChain 26 blocks actualBody := by
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
  exact .empty _
theorem actual_size : actualBytes.length≤8388608 := by
  simp only [actualBytes,List.length_append,WordSource.chunk_sizes_exact,actualBody,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,header_checked.2,footer_checked.2,ArtifactParentBranchGroup0.partSize,ArtifactParentBranchGroup1.partSize,ArtifactParentBranchGroup2.partSize,ArtifactParentBranchGroup3.partSize,ArtifactParentBranchGroup4.partSize,ArtifactParentBranchGroup5.partSize,ArtifactParentBranchGroup6.partSize,ArtifactParentBranchGroup7.partSize,ArtifactParentBranchGroup8.partSize,ArtifactParentBranchGroup9.partSize,ArtifactParentBranchGroup10.partSize,ArtifactParentBranchGroup11.partSize,ArtifactParentBranchGroup12.partSize]
  decide
theorem actual_validated : validate ActualParentBranchIR.program actualBytes=true :=
  validate_from_facts ActualParentBranchIR.program actualBytes ActualParentBranchIR.safe_checked
    (assembled_bytes_exact ActualParentBranchIR.program blocks partition_checked actualHeader actualFooter actualBody header_checked.1 footer_checked.1 body_checked) actual_size
theorem actual_meaning (inputs : Nat → WordIR.Word) : NativeDenotes actualBytes inputs (ParentBranchProgram.program.eval inputs) := by
  have result:=actual_bytes_sound ActualParentBranchIR.program actualBytes actual_validated inputs
  rw [ActualParentBranchIR.ir_exact] at result
  exact result
end ArtifactParentBranchBlocks
