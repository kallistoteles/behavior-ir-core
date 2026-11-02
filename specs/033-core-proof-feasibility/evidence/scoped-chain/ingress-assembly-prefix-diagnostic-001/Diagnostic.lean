import ArtifactIngressGroup0
import ArtifactIngressGroup1
import ArtifactIngressGroup2
import ArtifactIngressGroup3
import ArtifactIngressGroup4
import ArtifactIngressGroup5
import ArtifactIngressGroup6
import ArtifactIngressGroup7
import ArtifactIngressGroup8
import ArtifactIngressGroup9
import ArtifactIngressGroup10
import ArtifactIngressGroup11
import ArtifactIngressGroup12
import ArtifactIngressGroup13
import ArtifactIngressGroup14
import ArtifactIngressGroup15
import ArtifactIngressGroup16
import ArtifactIngressGroup17
import ArtifactIngressGroup18
import ArtifactIngressGroup19
namespace ArtifactIngressBlocks
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def partOps0 : List WordIR.Op := [.rotr 0 8,.rotr 1 16,.badd 64 65,.rotr 2 24,.badd 66 67,.badd 68 3,.rotr 4 8,.rotr 5 16,.badd 70 71,.rotr 6 24,.badd 72 73,.badd 74 7,.rotr 8 8,.rotr 9 16,.badd 76 77,.rotr 10 24,.badd 78 79,.badd 80 11,.rotr 12 8,.rotr 13 16,.badd 82 83,.rotr 14 24,.badd 84 85,.badd 86 15,.rotr 16 8,.rotr 17 16,.badd 88 89,.rotr 18 24,.badd 90 91,.badd 92 19,.rotr 20 8,.rotr 21 16,.badd 94 95,.rotr 22 24,.badd 96 97,.badd 98 23,.rotr 24 8,.rotr 25 16,.badd 100 101,.rotr 26 24,.badd 102 103,.badd 104 27,.rotr 28 8,.rotr 29 16,.badd 106 107,.rotr 30 24,.badd 108 109,.badd 110 31,.rotr 32 8,.rotr 33 16,.badd 112 113,.rotr 34 24,.badd 114 115,.badd 116 35,.rotr 36 8,.rotr 37 16,.badd 118 119,.rotr 38 24,.badd 120 121,.badd 122 39,.rotr 40 8,.rotr 41 16,.badd 124 125,.rotr 42 24]
theorem partPartition0 : partOps0=ArtifactIngressGroup0.partOps := rfl
theorem partChecked0 : ArtifactIngressGroup0.partBytes=statementBytes 64 (partOps0.map lower) := by
  rw [partPartition0]
  exact ArtifactIngressGroup0.partChecked
theorem partLength0 : partOps0.length=64 := rfl
def partOps1 : List WordIR.Op := [.badd 126 127,.badd 128 43,.rotr 44 8,.rotr 45 16,.badd 130 131,.rotr 46 24,.badd 132 133,.badd 134 47,.rotr 48 8,.rotr 49 16,.badd 136 137,.rotr 50 24,.badd 138 139,.badd 140 51,.rotr 52 8,.rotr 53 16,.badd 142 143,.rotr 54 24,.badd 144 145,.badd 146 55,.rotr 56 8,.rotr 57 16,.badd 148 149,.rotr 58 24,.badd 150 151,.badd 152 59,.rotr 60 8,.rotr 61 16,.badd 154 155,.rotr 62 24,.badd 156 157,.badd 158 63,.shr 0 8,.literal (BitVec.ofNat 32 0),.bnot 161,.band 160 162,.shr 0 8,.literal (BitVec.ofNat 32 0),.bnot 165,.bxor 164 166,.shr 0 8,.literal (BitVec.ofNat 32 0),.bnot 169,.badd 168 170,.bnot 171,.band 167 172,.bxor 163 173,.shr 174 31,.literal (BitVec.ofNat 32 1),.bxor 175 176,.shr 1 8,.literal (BitVec.ofNat 32 0),.bnot 179,.band 178 180,.shr 1 8,.literal (BitVec.ofNat 32 0),.bnot 183,.bxor 182 184,.shr 1 8,.literal (BitVec.ofNat 32 0),.bnot 187,.badd 186 188,.bnot 189,.band 185 190]
theorem partPartition1 : partOps1=ArtifactIngressGroup1.partOps := rfl
theorem partChecked1 : ArtifactIngressGroup1.partBytes=statementBytes 128 (partOps1.map lower) := by
  rw [partPartition1]
  exact ArtifactIngressGroup1.partChecked
theorem partLength1 : partOps1.length=64 := rfl
def partOps2 : List WordIR.Op := [.bxor 181 191,.shr 192 31,.literal (BitVec.ofNat 32 1),.bxor 193 194,.shr 2 8,.literal (BitVec.ofNat 32 0),.bnot 197,.band 196 198,.shr 2 8,.literal (BitVec.ofNat 32 0),.bnot 201,.bxor 200 202,.shr 2 8,.literal (BitVec.ofNat 32 0),.bnot 205,.badd 204 206,.bnot 207,.band 203 208,.bxor 199 209,.shr 210 31,.literal (BitVec.ofNat 32 1),.bxor 211 212,.shr 3 8,.literal (BitVec.ofNat 32 0),.bnot 215,.band 214 216,.shr 3 8,.literal (BitVec.ofNat 32 0),.bnot 219,.bxor 218 220,.shr 3 8,.literal (BitVec.ofNat 32 0),.bnot 223,.badd 222 224,.bnot 225,.band 221 226,.bxor 217 227,.shr 228 31,.literal (BitVec.ofNat 32 1),.bxor 229 230,.shr 4 8,.literal (BitVec.ofNat 32 0),.bnot 233,.band 232 234,.shr 4 8,.literal (BitVec.ofNat 32 0),.bnot 237,.bxor 236 238,.shr 4 8,.literal (BitVec.ofNat 32 0),.bnot 241,.badd 240 242,.bnot 243,.band 239 244,.bxor 235 245,.shr 246 31,.literal (BitVec.ofNat 32 1),.bxor 247 248,.shr 5 8,.literal (BitVec.ofNat 32 0),.bnot 251,.band 250 252,.shr 5 8,.literal (BitVec.ofNat 32 0)]
theorem partPartition2 : partOps2=ArtifactIngressGroup2.partOps := rfl
theorem partChecked2 : ArtifactIngressGroup2.partBytes=statementBytes 192 (partOps2.map lower) := by
  rw [partPartition2]
  exact ArtifactIngressGroup2.partChecked
theorem partLength2 : partOps2.length=64 := rfl
def partOps3 : List WordIR.Op := [.bnot 255,.bxor 254 256,.shr 5 8,.literal (BitVec.ofNat 32 0),.bnot 259,.badd 258 260,.bnot 261,.band 257 262,.bxor 253 263,.shr 264 31,.literal (BitVec.ofNat 32 1),.bxor 265 266,.shr 6 8,.literal (BitVec.ofNat 32 0),.bnot 269,.band 268 270,.shr 6 8,.literal (BitVec.ofNat 32 0),.bnot 273,.bxor 272 274,.shr 6 8,.literal (BitVec.ofNat 32 0),.bnot 277,.badd 276 278,.bnot 279,.band 275 280,.bxor 271 281,.shr 282 31,.literal (BitVec.ofNat 32 1),.bxor 283 284,.shr 7 8,.literal (BitVec.ofNat 32 0),.bnot 287,.band 286 288,.shr 7 8,.literal (BitVec.ofNat 32 0),.bnot 291,.bxor 290 292,.shr 7 8,.literal (BitVec.ofNat 32 0),.bnot 295,.badd 294 296,.bnot 297,.band 293 298,.bxor 289 299,.shr 300 31,.literal (BitVec.ofNat 32 1),.bxor 301 302,.shr 8 8,.literal (BitVec.ofNat 32 0),.bnot 305,.band 304 306,.shr 8 8,.literal (BitVec.ofNat 32 0),.bnot 309,.bxor 308 310,.shr 8 8,.literal (BitVec.ofNat 32 0),.bnot 313,.badd 312 314,.bnot 315,.band 311 316,.bxor 307 317,.shr 318 31]
theorem partPartition3 : partOps3=ArtifactIngressGroup3.partOps := rfl
theorem partChecked3 : ArtifactIngressGroup3.partBytes=statementBytes 256 (partOps3.map lower) := by
  rw [partPartition3]
  exact ArtifactIngressGroup3.partChecked
theorem partLength3 : partOps3.length=64 := rfl
def partOps4 : List WordIR.Op := [.literal (BitVec.ofNat 32 1),.bxor 319 320,.shr 9 8,.literal (BitVec.ofNat 32 0),.bnot 323,.band 322 324,.shr 9 8,.literal (BitVec.ofNat 32 0),.bnot 327,.bxor 326 328,.shr 9 8,.literal (BitVec.ofNat 32 0),.bnot 331,.badd 330 332,.bnot 333,.band 329 334,.bxor 325 335,.shr 336 31,.literal (BitVec.ofNat 32 1),.bxor 337 338,.shr 10 8,.literal (BitVec.ofNat 32 0),.bnot 341,.band 340 342,.shr 10 8,.literal (BitVec.ofNat 32 0),.bnot 345,.bxor 344 346,.shr 10 8,.literal (BitVec.ofNat 32 0),.bnot 349,.badd 348 350,.bnot 351,.band 347 352,.bxor 343 353,.shr 354 31,.literal (BitVec.ofNat 32 1),.bxor 355 356,.shr 11 8,.literal (BitVec.ofNat 32 0),.bnot 359,.band 358 360,.shr 11 8,.literal (BitVec.ofNat 32 0),.bnot 363,.bxor 362 364,.shr 11 8,.literal (BitVec.ofNat 32 0),.bnot 367,.badd 366 368,.bnot 369,.band 365 370,.bxor 361 371,.shr 372 31,.literal (BitVec.ofNat 32 1),.bxor 373 374,.shr 12 8,.literal (BitVec.ofNat 32 0),.bnot 377,.band 376 378,.shr 12 8,.literal (BitVec.ofNat 32 0),.bnot 381,.bxor 380 382]
theorem partPartition4 : partOps4=ArtifactIngressGroup4.partOps := rfl
theorem partChecked4 : ArtifactIngressGroup4.partBytes=statementBytes 320 (partOps4.map lower) := by
  rw [partPartition4]
  exact ArtifactIngressGroup4.partChecked
theorem partLength4 : partOps4.length=64 := rfl
def partOps5 : List WordIR.Op := [.shr 12 8,.literal (BitVec.ofNat 32 0),.bnot 385,.badd 384 386,.bnot 387,.band 383 388,.bxor 379 389,.shr 390 31,.literal (BitVec.ofNat 32 1),.bxor 391 392,.shr 13 8,.literal (BitVec.ofNat 32 0),.bnot 395,.band 394 396,.shr 13 8,.literal (BitVec.ofNat 32 0),.bnot 399,.bxor 398 400,.shr 13 8,.literal (BitVec.ofNat 32 0),.bnot 403,.badd 402 404,.bnot 405,.band 401 406,.bxor 397 407,.shr 408 31,.literal (BitVec.ofNat 32 1),.bxor 409 410,.shr 14 8,.literal (BitVec.ofNat 32 0),.bnot 413,.band 412 414,.shr 14 8,.literal (BitVec.ofNat 32 0),.bnot 417,.bxor 416 418,.shr 14 8,.literal (BitVec.ofNat 32 0),.bnot 421,.badd 420 422,.bnot 423,.band 419 424,.bxor 415 425,.shr 426 31,.literal (BitVec.ofNat 32 1),.bxor 427 428,.shr 15 8,.literal (BitVec.ofNat 32 0),.bnot 431,.band 430 432,.shr 15 8,.literal (BitVec.ofNat 32 0),.bnot 435,.bxor 434 436,.shr 15 8,.literal (BitVec.ofNat 32 0),.bnot 439,.badd 438 440,.bnot 441,.band 437 442,.bxor 433 443,.shr 444 31,.literal (BitVec.ofNat 32 1),.bxor 445 446]
theorem partPartition5 : partOps5=ArtifactIngressGroup5.partOps := rfl
theorem partChecked5 : ArtifactIngressGroup5.partBytes=statementBytes 384 (partOps5.map lower) := by
  rw [partPartition5]
  exact ArtifactIngressGroup5.partChecked
theorem partLength5 : partOps5.length=64 := rfl
def partOps6 : List WordIR.Op := [.shr 16 8,.literal (BitVec.ofNat 32 0),.bnot 449,.band 448 450,.shr 16 8,.literal (BitVec.ofNat 32 0),.bnot 453,.bxor 452 454,.shr 16 8,.literal (BitVec.ofNat 32 0),.bnot 457,.badd 456 458,.bnot 459,.band 455 460,.bxor 451 461,.shr 462 31,.literal (BitVec.ofNat 32 1),.bxor 463 464,.shr 17 8,.literal (BitVec.ofNat 32 0),.bnot 467,.band 466 468,.shr 17 8,.literal (BitVec.ofNat 32 0),.bnot 471,.bxor 470 472,.shr 17 8,.literal (BitVec.ofNat 32 0),.bnot 475,.badd 474 476,.bnot 477,.band 473 478,.bxor 469 479,.shr 480 31,.literal (BitVec.ofNat 32 1),.bxor 481 482,.shr 18 8,.literal (BitVec.ofNat 32 0),.bnot 485,.band 484 486,.shr 18 8,.literal (BitVec.ofNat 32 0),.bnot 489,.bxor 488 490,.shr 18 8,.literal (BitVec.ofNat 32 0),.bnot 493,.badd 492 494,.bnot 495,.band 491 496,.bxor 487 497,.shr 498 31,.literal (BitVec.ofNat 32 1),.bxor 499 500,.shr 19 8,.literal (BitVec.ofNat 32 0),.bnot 503,.band 502 504,.shr 19 8,.literal (BitVec.ofNat 32 0),.bnot 507,.bxor 506 508,.shr 19 8,.literal (BitVec.ofNat 32 0)]
theorem partPartition6 : partOps6=ArtifactIngressGroup6.partOps := rfl
theorem partChecked6 : ArtifactIngressGroup6.partBytes=statementBytes 448 (partOps6.map lower) := by
  rw [partPartition6]
  exact ArtifactIngressGroup6.partChecked
theorem partLength6 : partOps6.length=64 := rfl
def partOps7 : List WordIR.Op := [.bnot 511,.badd 510 512,.bnot 513,.band 509 514,.bxor 505 515,.shr 516 31,.literal (BitVec.ofNat 32 1),.bxor 517 518,.shr 20 8,.literal (BitVec.ofNat 32 0),.bnot 521,.band 520 522,.shr 20 8,.literal (BitVec.ofNat 32 0),.bnot 525,.bxor 524 526,.shr 20 8,.literal (BitVec.ofNat 32 0),.bnot 529,.badd 528 530,.bnot 531,.band 527 532,.bxor 523 533,.shr 534 31,.literal (BitVec.ofNat 32 1),.bxor 535 536,.shr 21 8,.literal (BitVec.ofNat 32 0),.bnot 539,.band 538 540,.shr 21 8,.literal (BitVec.ofNat 32 0),.bnot 543,.bxor 542 544,.shr 21 8,.literal (BitVec.ofNat 32 0),.bnot 547,.badd 546 548,.bnot 549,.band 545 550,.bxor 541 551,.shr 552 31,.literal (BitVec.ofNat 32 1),.bxor 553 554,.shr 22 8,.literal (BitVec.ofNat 32 0),.bnot 557,.band 556 558,.shr 22 8,.literal (BitVec.ofNat 32 0),.bnot 561,.bxor 560 562,.shr 22 8,.literal (BitVec.ofNat 32 0),.bnot 565,.badd 564 566,.bnot 567,.band 563 568,.bxor 559 569,.shr 570 31,.literal (BitVec.ofNat 32 1),.bxor 571 572,.shr 23 8,.literal (BitVec.ofNat 32 0)]
theorem partPartition7 : partOps7=ArtifactIngressGroup7.partOps := rfl
theorem partChecked7 : ArtifactIngressGroup7.partBytes=statementBytes 512 (partOps7.map lower) := by
  rw [partPartition7]
  exact ArtifactIngressGroup7.partChecked
theorem partLength7 : partOps7.length=64 := rfl
def partOps8 : List WordIR.Op := [.bnot 575,.band 574 576,.shr 23 8,.literal (BitVec.ofNat 32 0),.bnot 579,.bxor 578 580,.shr 23 8,.literal (BitVec.ofNat 32 0),.bnot 583,.badd 582 584,.bnot 585,.band 581 586,.bxor 577 587,.shr 588 31,.literal (BitVec.ofNat 32 1),.bxor 589 590,.shr 24 8,.literal (BitVec.ofNat 32 0),.bnot 593,.band 592 594,.shr 24 8,.literal (BitVec.ofNat 32 0),.bnot 597,.bxor 596 598,.shr 24 8,.literal (BitVec.ofNat 32 0),.bnot 601,.badd 600 602,.bnot 603,.band 599 604,.bxor 595 605,.shr 606 31,.literal (BitVec.ofNat 32 1),.bxor 607 608,.shr 25 8,.literal (BitVec.ofNat 32 0),.bnot 611,.band 610 612,.shr 25 8,.literal (BitVec.ofNat 32 0),.bnot 615,.bxor 614 616,.shr 25 8,.literal (BitVec.ofNat 32 0),.bnot 619,.badd 618 620,.bnot 621,.band 617 622,.bxor 613 623,.shr 624 31,.literal (BitVec.ofNat 32 1),.bxor 625 626,.shr 26 8,.literal (BitVec.ofNat 32 0),.bnot 629,.band 628 630,.shr 26 8,.literal (BitVec.ofNat 32 0),.bnot 633,.bxor 632 634,.shr 26 8,.literal (BitVec.ofNat 32 0),.bnot 637,.badd 636 638]
theorem partPartition8 : partOps8=ArtifactIngressGroup8.partOps := rfl
theorem partChecked8 : ArtifactIngressGroup8.partBytes=statementBytes 576 (partOps8.map lower) := by
  rw [partPartition8]
  exact ArtifactIngressGroup8.partChecked
theorem partLength8 : partOps8.length=64 := rfl
def partOps9 : List WordIR.Op := [.bnot 639,.band 635 640,.bxor 631 641,.shr 642 31,.literal (BitVec.ofNat 32 1),.bxor 643 644,.shr 27 8,.literal (BitVec.ofNat 32 0),.bnot 647,.band 646 648,.shr 27 8,.literal (BitVec.ofNat 32 0),.bnot 651,.bxor 650 652,.shr 27 8,.literal (BitVec.ofNat 32 0),.bnot 655,.badd 654 656,.bnot 657,.band 653 658,.bxor 649 659,.shr 660 31,.literal (BitVec.ofNat 32 1),.bxor 661 662,.shr 28 8,.literal (BitVec.ofNat 32 0),.bnot 665,.band 664 666,.shr 28 8,.literal (BitVec.ofNat 32 0),.bnot 669,.bxor 668 670,.shr 28 8,.literal (BitVec.ofNat 32 0),.bnot 673,.badd 672 674,.bnot 675,.band 671 676,.bxor 667 677,.shr 678 31,.literal (BitVec.ofNat 32 1),.bxor 679 680,.shr 29 8,.literal (BitVec.ofNat 32 0),.bnot 683,.band 682 684,.shr 29 8,.literal (BitVec.ofNat 32 0),.bnot 687,.bxor 686 688,.shr 29 8,.literal (BitVec.ofNat 32 0),.bnot 691,.badd 690 692,.bnot 693,.band 689 694,.bxor 685 695,.shr 696 31,.literal (BitVec.ofNat 32 1),.bxor 697 698,.shr 30 8,.literal (BitVec.ofNat 32 0),.bnot 701,.band 700 702]
theorem partPartition9 : partOps9=ArtifactIngressGroup9.partOps := rfl
theorem partChecked9 : ArtifactIngressGroup9.partBytes=statementBytes 640 (partOps9.map lower) := by
  rw [partPartition9]
  exact ArtifactIngressGroup9.partChecked
theorem partLength9 : partOps9.length=64 := rfl
def partOps10 : List WordIR.Op := [.shr 30 8,.literal (BitVec.ofNat 32 0),.bnot 705,.bxor 704 706,.shr 30 8,.literal (BitVec.ofNat 32 0),.bnot 709,.badd 708 710,.bnot 711,.band 707 712,.bxor 703 713,.shr 714 31,.literal (BitVec.ofNat 32 1),.bxor 715 716,.shr 31 8,.literal (BitVec.ofNat 32 0),.bnot 719,.band 718 720,.shr 31 8,.literal (BitVec.ofNat 32 0),.bnot 723,.bxor 722 724,.shr 31 8,.literal (BitVec.ofNat 32 0),.bnot 727,.badd 726 728,.bnot 729,.band 725 730,.bxor 721 731,.shr 732 31,.literal (BitVec.ofNat 32 1),.bxor 733 734,.shr 32 8,.literal (BitVec.ofNat 32 0),.bnot 737,.band 736 738,.shr 32 8,.literal (BitVec.ofNat 32 0),.bnot 741,.bxor 740 742,.shr 32 8,.literal (BitVec.ofNat 32 0),.bnot 745,.badd 744 746,.bnot 747,.band 743 748,.bxor 739 749,.shr 750 31,.literal (BitVec.ofNat 32 1),.bxor 751 752,.shr 33 8,.literal (BitVec.ofNat 32 0),.bnot 755,.band 754 756,.shr 33 8,.literal (BitVec.ofNat 32 0),.bnot 759,.bxor 758 760,.shr 33 8,.literal (BitVec.ofNat 32 0),.bnot 763,.badd 762 764,.bnot 765,.band 761 766]
theorem partPartition10 : partOps10=ArtifactIngressGroup10.partOps := rfl
theorem partChecked10 : ArtifactIngressGroup10.partBytes=statementBytes 704 (partOps10.map lower) := by
  rw [partPartition10]
  exact ArtifactIngressGroup10.partChecked
theorem partLength10 : partOps10.length=64 := rfl
def partOps11 : List WordIR.Op := [.bxor 757 767,.shr 768 31,.literal (BitVec.ofNat 32 1),.bxor 769 770,.shr 34 8,.literal (BitVec.ofNat 32 0),.bnot 773,.band 772 774,.shr 34 8,.literal (BitVec.ofNat 32 0),.bnot 777,.bxor 776 778,.shr 34 8,.literal (BitVec.ofNat 32 0),.bnot 781,.badd 780 782,.bnot 783,.band 779 784,.bxor 775 785,.shr 786 31,.literal (BitVec.ofNat 32 1),.bxor 787 788,.shr 35 8,.literal (BitVec.ofNat 32 0),.bnot 791,.band 790 792,.shr 35 8,.literal (BitVec.ofNat 32 0),.bnot 795,.bxor 794 796,.shr 35 8,.literal (BitVec.ofNat 32 0),.bnot 799,.badd 798 800,.bnot 801,.band 797 802,.bxor 793 803,.shr 804 31,.literal (BitVec.ofNat 32 1),.bxor 805 806,.shr 36 8,.literal (BitVec.ofNat 32 0),.bnot 809,.band 808 810,.shr 36 8,.literal (BitVec.ofNat 32 0),.bnot 813,.bxor 812 814,.shr 36 8,.literal (BitVec.ofNat 32 0),.bnot 817,.badd 816 818,.bnot 819,.band 815 820,.bxor 811 821,.shr 822 31,.literal (BitVec.ofNat 32 1),.bxor 823 824,.shr 37 8,.literal (BitVec.ofNat 32 0),.bnot 827,.band 826 828,.shr 37 8,.literal (BitVec.ofNat 32 0)]
theorem partPartition11 : partOps11=ArtifactIngressGroup11.partOps := rfl
theorem partChecked11 : ArtifactIngressGroup11.partBytes=statementBytes 768 (partOps11.map lower) := by
  rw [partPartition11]
  exact ArtifactIngressGroup11.partChecked
theorem partLength11 : partOps11.length=64 := rfl
def partOps12 : List WordIR.Op := [.bnot 831,.bxor 830 832,.shr 37 8,.literal (BitVec.ofNat 32 0),.bnot 835,.badd 834 836,.bnot 837,.band 833 838,.bxor 829 839,.shr 840 31,.literal (BitVec.ofNat 32 1),.bxor 841 842,.shr 38 8,.literal (BitVec.ofNat 32 0),.bnot 845,.band 844 846,.shr 38 8,.literal (BitVec.ofNat 32 0),.bnot 849,.bxor 848 850,.shr 38 8,.literal (BitVec.ofNat 32 0),.bnot 853,.badd 852 854,.bnot 855,.band 851 856,.bxor 847 857,.shr 858 31,.literal (BitVec.ofNat 32 1),.bxor 859 860,.shr 39 8,.literal (BitVec.ofNat 32 0),.bnot 863,.band 862 864,.shr 39 8,.literal (BitVec.ofNat 32 0),.bnot 867,.bxor 866 868,.shr 39 8,.literal (BitVec.ofNat 32 0),.bnot 871,.badd 870 872,.bnot 873,.band 869 874,.bxor 865 875,.shr 876 31,.literal (BitVec.ofNat 32 1),.bxor 877 878,.shr 40 8,.literal (BitVec.ofNat 32 0),.bnot 881,.band 880 882,.shr 40 8,.literal (BitVec.ofNat 32 0),.bnot 885,.bxor 884 886,.shr 40 8,.literal (BitVec.ofNat 32 0),.bnot 889,.badd 888 890,.bnot 891,.band 887 892,.bxor 883 893,.shr 894 31]
theorem partPartition12 : partOps12=ArtifactIngressGroup12.partOps := rfl
theorem partChecked12 : ArtifactIngressGroup12.partBytes=statementBytes 832 (partOps12.map lower) := by
  rw [partPartition12]
  exact ArtifactIngressGroup12.partChecked
theorem partLength12 : partOps12.length=64 := rfl
def partOps13 : List WordIR.Op := [.literal (BitVec.ofNat 32 1),.bxor 895 896,.shr 41 8,.literal (BitVec.ofNat 32 0),.bnot 899,.band 898 900,.shr 41 8,.literal (BitVec.ofNat 32 0),.bnot 903,.bxor 902 904,.shr 41 8,.literal (BitVec.ofNat 32 0),.bnot 907,.badd 906 908,.bnot 909,.band 905 910,.bxor 901 911,.shr 912 31,.literal (BitVec.ofNat 32 1),.bxor 913 914,.shr 42 8,.literal (BitVec.ofNat 32 0),.bnot 917,.band 916 918,.shr 42 8,.literal (BitVec.ofNat 32 0),.bnot 921,.bxor 920 922,.shr 42 8,.literal (BitVec.ofNat 32 0),.bnot 925,.badd 924 926,.bnot 927,.band 923 928,.bxor 919 929,.shr 930 31,.literal (BitVec.ofNat 32 1),.bxor 931 932,.shr 43 8,.literal (BitVec.ofNat 32 0),.bnot 935,.band 934 936,.shr 43 8,.literal (BitVec.ofNat 32 0),.bnot 939,.bxor 938 940,.shr 43 8,.literal (BitVec.ofNat 32 0),.bnot 943,.badd 942 944,.bnot 945,.band 941 946,.bxor 937 947,.shr 948 31,.literal (BitVec.ofNat 32 1),.bxor 949 950,.shr 44 8,.literal (BitVec.ofNat 32 0),.bnot 953,.band 952 954,.shr 44 8,.literal (BitVec.ofNat 32 0),.bnot 957,.bxor 956 958]
theorem partPartition13 : partOps13=ArtifactIngressGroup13.partOps := rfl
theorem partChecked13 : ArtifactIngressGroup13.partBytes=statementBytes 896 (partOps13.map lower) := by
  rw [partPartition13]
  exact ArtifactIngressGroup13.partChecked
theorem partLength13 : partOps13.length=64 := rfl
def partOps14 : List WordIR.Op := [.shr 44 8,.literal (BitVec.ofNat 32 0),.bnot 961,.badd 960 962,.bnot 963,.band 959 964,.bxor 955 965,.shr 966 31,.literal (BitVec.ofNat 32 1),.bxor 967 968,.shr 45 8,.literal (BitVec.ofNat 32 0),.bnot 971,.band 970 972,.shr 45 8,.literal (BitVec.ofNat 32 0),.bnot 975,.bxor 974 976,.shr 45 8,.literal (BitVec.ofNat 32 0),.bnot 979,.badd 978 980,.bnot 981,.band 977 982,.bxor 973 983,.shr 984 31,.literal (BitVec.ofNat 32 1),.bxor 985 986,.shr 46 8,.literal (BitVec.ofNat 32 0),.bnot 989,.band 988 990,.shr 46 8,.literal (BitVec.ofNat 32 0),.bnot 993,.bxor 992 994,.shr 46 8,.literal (BitVec.ofNat 32 0),.bnot 997,.badd 996 998,.bnot 999,.band 995 1000,.bxor 991 1001,.shr 1002 31,.literal (BitVec.ofNat 32 1),.bxor 1003 1004,.shr 47 8,.literal (BitVec.ofNat 32 0),.bnot 1007,.band 1006 1008,.shr 47 8,.literal (BitVec.ofNat 32 0),.bnot 1011,.bxor 1010 1012,.shr 47 8,.literal (BitVec.ofNat 32 0),.bnot 1015,.badd 1014 1016,.bnot 1017,.band 1013 1018,.bxor 1009 1019,.shr 1020 31,.literal (BitVec.ofNat 32 1),.bxor 1021 1022]
theorem partPartition14 : partOps14=ArtifactIngressGroup14.partOps := rfl
theorem partChecked14 : ArtifactIngressGroup14.partBytes=statementBytes 960 (partOps14.map lower) := by
  rw [partPartition14]
  exact ArtifactIngressGroup14.partChecked
theorem partLength14 : partOps14.length=64 := rfl
def partOps15 : List WordIR.Op := [.shr 48 8,.literal (BitVec.ofNat 32 0),.bnot 1025,.band 1024 1026,.shr 48 8,.literal (BitVec.ofNat 32 0),.bnot 1029,.bxor 1028 1030,.shr 48 8,.literal (BitVec.ofNat 32 0),.bnot 1033,.badd 1032 1034,.bnot 1035,.band 1031 1036,.bxor 1027 1037,.shr 1038 31,.literal (BitVec.ofNat 32 1),.bxor 1039 1040,.shr 49 8,.literal (BitVec.ofNat 32 0),.bnot 1043,.band 1042 1044,.shr 49 8,.literal (BitVec.ofNat 32 0),.bnot 1047,.bxor 1046 1048,.shr 49 8,.literal (BitVec.ofNat 32 0),.bnot 1051,.badd 1050 1052,.bnot 1053,.band 1049 1054,.bxor 1045 1055,.shr 1056 31,.literal (BitVec.ofNat 32 1),.bxor 1057 1058,.shr 50 8,.literal (BitVec.ofNat 32 0),.bnot 1061,.band 1060 1062,.shr 50 8,.literal (BitVec.ofNat 32 0),.bnot 1065,.bxor 1064 1066,.shr 50 8,.literal (BitVec.ofNat 32 0),.bnot 1069,.badd 1068 1070,.bnot 1071,.band 1067 1072,.bxor 1063 1073,.shr 1074 31,.literal (BitVec.ofNat 32 1),.bxor 1075 1076,.shr 51 8,.literal (BitVec.ofNat 32 0),.bnot 1079,.band 1078 1080,.shr 51 8,.literal (BitVec.ofNat 32 0),.bnot 1083,.bxor 1082 1084,.shr 51 8,.literal (BitVec.ofNat 32 0)]
theorem partPartition15 : partOps15=ArtifactIngressGroup15.partOps := rfl
theorem partChecked15 : ArtifactIngressGroup15.partBytes=statementBytes 1024 (partOps15.map lower) := by
  rw [partPartition15]
  exact ArtifactIngressGroup15.partChecked
theorem partLength15 : partOps15.length=64 := rfl
def partOps16 : List WordIR.Op := [.bnot 1087,.badd 1086 1088,.bnot 1089,.band 1085 1090,.bxor 1081 1091,.shr 1092 31,.literal (BitVec.ofNat 32 1),.bxor 1093 1094,.shr 52 8,.literal (BitVec.ofNat 32 0),.bnot 1097,.band 1096 1098,.shr 52 8,.literal (BitVec.ofNat 32 0),.bnot 1101,.bxor 1100 1102,.shr 52 8,.literal (BitVec.ofNat 32 0),.bnot 1105,.badd 1104 1106,.bnot 1107,.band 1103 1108,.bxor 1099 1109,.shr 1110 31,.literal (BitVec.ofNat 32 1),.bxor 1111 1112,.shr 53 8,.literal (BitVec.ofNat 32 0),.bnot 1115,.band 1114 1116,.shr 53 8,.literal (BitVec.ofNat 32 0),.bnot 1119,.bxor 1118 1120,.shr 53 8,.literal (BitVec.ofNat 32 0),.bnot 1123,.badd 1122 1124,.bnot 1125,.band 1121 1126,.bxor 1117 1127,.shr 1128 31,.literal (BitVec.ofNat 32 1),.bxor 1129 1130,.shr 54 8,.literal (BitVec.ofNat 32 0),.bnot 1133,.band 1132 1134,.shr 54 8,.literal (BitVec.ofNat 32 0),.bnot 1137,.bxor 1136 1138,.shr 54 8,.literal (BitVec.ofNat 32 0),.bnot 1141,.badd 1140 1142,.bnot 1143,.band 1139 1144,.bxor 1135 1145,.shr 1146 31,.literal (BitVec.ofNat 32 1),.bxor 1147 1148,.shr 55 8,.literal (BitVec.ofNat 32 0)]
theorem partPartition16 : partOps16=ArtifactIngressGroup16.partOps := rfl
theorem partChecked16 : ArtifactIngressGroup16.partBytes=statementBytes 1088 (partOps16.map lower) := by
  rw [partPartition16]
  exact ArtifactIngressGroup16.partChecked
theorem partLength16 : partOps16.length=64 := rfl
def partOps17 : List WordIR.Op := [.bnot 1151,.band 1150 1152,.shr 55 8,.literal (BitVec.ofNat 32 0),.bnot 1155,.bxor 1154 1156,.shr 55 8,.literal (BitVec.ofNat 32 0),.bnot 1159,.badd 1158 1160,.bnot 1161,.band 1157 1162,.bxor 1153 1163,.shr 1164 31,.literal (BitVec.ofNat 32 1),.bxor 1165 1166,.shr 56 8,.literal (BitVec.ofNat 32 0),.bnot 1169,.band 1168 1170,.shr 56 8,.literal (BitVec.ofNat 32 0),.bnot 1173,.bxor 1172 1174,.shr 56 8,.literal (BitVec.ofNat 32 0),.bnot 1177,.badd 1176 1178,.bnot 1179,.band 1175 1180,.bxor 1171 1181,.shr 1182 31,.literal (BitVec.ofNat 32 1),.bxor 1183 1184,.shr 57 8,.literal (BitVec.ofNat 32 0),.bnot 1187,.band 1186 1188,.shr 57 8,.literal (BitVec.ofNat 32 0),.bnot 1191,.bxor 1190 1192,.shr 57 8,.literal (BitVec.ofNat 32 0),.bnot 1195,.badd 1194 1196,.bnot 1197,.band 1193 1198,.bxor 1189 1199,.shr 1200 31,.literal (BitVec.ofNat 32 1),.bxor 1201 1202,.shr 58 8,.literal (BitVec.ofNat 32 0),.bnot 1205,.band 1204 1206,.shr 58 8,.literal (BitVec.ofNat 32 0),.bnot 1209,.bxor 1208 1210,.shr 58 8,.literal (BitVec.ofNat 32 0),.bnot 1213,.badd 1212 1214]
theorem partPartition17 : partOps17=ArtifactIngressGroup17.partOps := rfl
theorem partChecked17 : ArtifactIngressGroup17.partBytes=statementBytes 1152 (partOps17.map lower) := by
  rw [partPartition17]
  exact ArtifactIngressGroup17.partChecked
theorem partLength17 : partOps17.length=64 := rfl
def partOps18 : List WordIR.Op := [.bnot 1215,.band 1211 1216,.bxor 1207 1217,.shr 1218 31,.literal (BitVec.ofNat 32 1),.bxor 1219 1220,.shr 59 8,.literal (BitVec.ofNat 32 0),.bnot 1223,.band 1222 1224,.shr 59 8,.literal (BitVec.ofNat 32 0),.bnot 1227,.bxor 1226 1228,.shr 59 8,.literal (BitVec.ofNat 32 0),.bnot 1231,.badd 1230 1232,.bnot 1233,.band 1229 1234,.bxor 1225 1235,.shr 1236 31,.literal (BitVec.ofNat 32 1),.bxor 1237 1238,.shr 60 8,.literal (BitVec.ofNat 32 0),.bnot 1241,.band 1240 1242,.shr 60 8,.literal (BitVec.ofNat 32 0),.bnot 1245,.bxor 1244 1246,.shr 60 8,.literal (BitVec.ofNat 32 0),.bnot 1249,.badd 1248 1250,.bnot 1251,.band 1247 1252,.bxor 1243 1253,.shr 1254 31,.literal (BitVec.ofNat 32 1),.bxor 1255 1256,.shr 61 8,.literal (BitVec.ofNat 32 0),.bnot 1259,.band 1258 1260,.shr 61 8,.literal (BitVec.ofNat 32 0),.bnot 1263,.bxor 1262 1264,.shr 61 8,.literal (BitVec.ofNat 32 0),.bnot 1267,.badd 1266 1268,.bnot 1269,.band 1265 1270,.bxor 1261 1271,.shr 1272 31,.literal (BitVec.ofNat 32 1),.bxor 1273 1274,.shr 62 8,.literal (BitVec.ofNat 32 0),.bnot 1277,.band 1276 1278]
theorem partPartition18 : partOps18=ArtifactIngressGroup18.partOps := rfl
theorem partChecked18 : ArtifactIngressGroup18.partBytes=statementBytes 1216 (partOps18.map lower) := by
  rw [partPartition18]
  exact ArtifactIngressGroup18.partChecked
theorem partLength18 : partOps18.length=64 := rfl
def partOps19 : List WordIR.Op := [.shr 62 8,.literal (BitVec.ofNat 32 0),.bnot 1281,.bxor 1280 1282,.shr 62 8,.literal (BitVec.ofNat 32 0),.bnot 1285,.badd 1284 1286,.bnot 1287,.band 1283 1288,.bxor 1279 1289,.shr 1290 31,.literal (BitVec.ofNat 32 1),.bxor 1291 1292,.shr 63 8,.literal (BitVec.ofNat 32 0),.bnot 1295,.band 1294 1296,.shr 63 8,.literal (BitVec.ofNat 32 0),.bnot 1299,.bxor 1298 1300,.shr 63 8,.literal (BitVec.ofNat 32 0),.bnot 1303,.badd 1302 1304,.bnot 1305,.band 1301 1306,.bxor 1297 1307,.shr 1308 31,.literal (BitVec.ofNat 32 1),.bxor 1309 1310]
theorem partPartition19 : partOps19=ArtifactIngressGroup19.partOps := rfl
theorem partChecked19 : ArtifactIngressGroup19.partBytes=statementBytes 1280 (partOps19.map lower) := by
  rw [partPartition19]
  exact ArtifactIngressGroup19.partChecked
theorem partLength19 : partOps19.length=32 := rfl
def blocks : List (List WordIR.Op) := [partOps0,partOps1,partOps2,partOps3,partOps4,partOps5,partOps6,partOps7,partOps8,partOps9,partOps10,partOps11,partOps12,partOps13,partOps14,partOps15,partOps16,partOps17,partOps18,partOps19]
def actualBody : List Bytes := [ArtifactIngressGroup0.partBytes,ArtifactIngressGroup1.partBytes,ArtifactIngressGroup2.partBytes,ArtifactIngressGroup3.partBytes,ArtifactIngressGroup4.partBytes,ArtifactIngressGroup5.partBytes,ArtifactIngressGroup6.partBytes,ArtifactIngressGroup7.partBytes,ArtifactIngressGroup8.partBytes,ArtifactIngressGroup9.partBytes,ArtifactIngressGroup10.partBytes,ArtifactIngressGroup11.partBytes,ArtifactIngressGroup12.partBytes,ArtifactIngressGroup13.partBytes,ArtifactIngressGroup14.partBytes,ArtifactIngressGroup15.partBytes,ArtifactIngressGroup16.partBytes,ArtifactIngressGroup17.partBytes,ArtifactIngressGroup18.partBytes,ArtifactIngressGroup19.partBytes]
def actualHeader : Bytes := ("pub fn checker_step(\n    r00000000: u32,\n    r00000001: u32,\n    r00000002: u32,\n    r00000003: u32,\n    r00000004: u32,\n    r00000005: u32,\n    r00000006: u32,\n    r00000007: u32,\n    r00000008: u32,\n    r00000009: u32,\n    r0000000a: u32,\n    r0000000b: u32,\n    r0000000c: u32,\n    r0000000d: u32,\n    r0000000e: u32,\n    r0000000f: u32,\n    r00000010: u32,\n    r00000011: u32,\n    r00000012: u32,\n    r00000013: u32,\n    r00000014: u32,\n    r00000015: u32,\n    r00000016: u32,\n    r00000017: u32,\n    r00000018: u32,\n    r00000019: u32,\n    r0000001a: u32,\n    r0000001b: u32,\n    r0000001c: u32,\n    r0000001d: u32,\n    r0000001e: u32,\n    r0000001f: u32,\n    r00000020: u32,\n    r00000021: u32,\n    r00000022: u32,\n    r00000023: u32,\n    r00000024: u32,\n    r00000025: u32,\n    r00000026: u32,\n    r00000027: u32,\n    r00000028: u32,\n    r00000029: u32,\n    r0000002a: u32,\n    r0000002b: u32,\n    r0000002c: u32,\n    r0000002d: u32,\n    r0000002e: u32,\n    r0000002f: u32,\n    r00000030: u32,\n    r00000031: u32,\n    r00000032: u32,\n    r00000033: u32,\n    r00000034: u32,\n    r00000035: u32,\n    r00000036: u32,\n    r00000037: u32,\n    r00000038: u32,\n    r00000039: u32,\n    r0000003a: u32,\n    r0000003b: u32,\n    r0000003c: u32,\n    r0000003d: u32,\n    r0000003e: u32,\n    r0000003f: u32,\n) -> [u32; 0x00000050_usize] {\n" : String).toByteArray.data.toList
def actualFooter : Bytes := ("    [r00000045, r0000004b, r00000051, r00000057, r0000005d, r00000063, r00000069, r0000006f, r00000075, r0000007b, r00000081, r00000087, r0000008d, r00000093, r00000099, r0000009f, r000000b1, r000000c3, r000000d5, r000000e7, r000000f9, r0000010b, r0000011d, r0000012f, r00000141, r00000153, r00000165, r00000177, r00000189, r0000019b, r000001ad, r000001bf, r000001d1, r000001e3, r000001f5, r00000207, r00000219, r0000022b, r0000023d, r0000024f, r00000261, r00000273, r00000285, r00000297, r000002a9, r000002bb, r000002cd, r000002df, r000002f1, r00000303, r00000315, r00000327, r00000339, r0000034b, r0000035d, r0000036f, r00000381, r00000393, r000003a5, r000003b7, r000003c9, r000003db, r000003ed, r000003ff, r00000411, r00000423, r00000435, r00000447, r00000459, r0000046b, r0000047d, r0000048f, r000004a1, r000004b3, r000004c5, r000004d7, r000004e9, r000004fb, r0000050d, r0000051f]\n}\n" : String).toByteArray.data.toList
def actualBytes : Bytes := actualHeader++actualBody.flatten++actualFooter
theorem partition_checked : ActualIngressIR.program.operations=blocks.flatten := rfl

end ArtifactIngressBlocks
