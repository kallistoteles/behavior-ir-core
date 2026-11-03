import ArtifactPathFrameFooter
import Core033.PathFrameMeaning
import ArtifactPathFrameHeader
import ArtifactPathFrameGroup0
import ArtifactPathFrameGroup1
import ArtifactPathFrameGroup2
import ArtifactPathFrameGroup3
import ArtifactPathFrameGroup4
import ArtifactPathFrameGroup5
import ArtifactPathFrameGroup6
import ArtifactPathFrameGroup7
import ArtifactPathFrameGroup8
import ArtifactPathFrameGroup9
import ArtifactPathFrameGroup10
import ArtifactPathFrameGroup11
import ArtifactPathFrameGroup12
import ArtifactPathFrameGroup13
import ArtifactPathFrameGroup14
import ArtifactPathFrameGroup15
import ArtifactPathFrameGroup16
import ArtifactPathFrameGroup17
import ArtifactPathFrameGroup18
import ArtifactPathFrameGroup19
import ArtifactPathFrameGroup20
import ArtifactPathFrameGroup21
namespace ArtifactPathFrameBlocks
open Core033 WordSource WordSourceBlocks
set_option Elab.async false
set_option maxRecDepth 16384
set_option maxHeartbeats 8000000
def partOps0 : List WordIR.Op := [.literal (BitVec.ofNat 32 1),.badd 1 34,.bnot 1,.literal (BitVec.ofNat 32 255),.band 36 37,.shr 1 8,.literal (BitVec.ofNat 32 0),.bnot 40,.band 39 41,.shr 1 8,.literal (BitVec.ofNat 32 0),.bnot 44,.bxor 43 45,.shr 1 8,.literal (BitVec.ofNat 32 0),.bnot 48,.badd 47 49,.bnot 50,.band 46 51,.bxor 42 52,.shr 53 31,.literal (BitVec.ofNat 32 1),.bxor 54 55,.literal (BitVec.ofNat 32 256),.bxor 1 57,.literal (BitVec.ofNat 32 0),.bnot 59,.band 58 60,.literal (BitVec.ofNat 32 256),.bxor 1 62,.literal (BitVec.ofNat 32 0),.bnot 64,.bxor 63 65,.literal (BitVec.ofNat 32 256),.bxor 1 67,.literal (BitVec.ofNat 32 0),.bnot 69,.badd 68 70,.bnot 71,.band 66 72,.bxor 61 73,.shr 74 31,.literal (BitVec.ofNat 32 1),.bxor 75 76,.literal (BitVec.ofNat 32 256),.bnot 78,.band 1 79,.literal (BitVec.ofNat 32 256),.bnot 81,.bxor 1 82,.literal (BitVec.ofNat 32 256),.bnot 84,.badd 1 85,.bnot 86,.band 83 87,.bxor 80 88,.shr 89 31,.literal (BitVec.ofNat 32 1),.bxor 90 91,.shr 38 5,.bnot 38,.literal (BitVec.ofNat 32 31),.band 94 95,.shr 38 8]
theorem partPartition0 : partOps0=ArtifactPathFrameGroup0.partOps := rfl
theorem partChecked0 : ArtifactPathFrameGroup0.partBytes=statementBytes 34 (partOps0.map lower) := by
  rw [partPartition0]
  exact ArtifactPathFrameGroup0.partChecked
theorem partLength0 : partOps0.length=64 := rfl
def partOps1 : List WordIR.Op := [.literal (BitVec.ofNat 32 0),.bnot 98,.band 97 99,.shr 38 8,.literal (BitVec.ofNat 32 0),.bnot 102,.bxor 101 103,.shr 38 8,.literal (BitVec.ofNat 32 0),.bnot 106,.badd 105 107,.bnot 108,.band 104 109,.bxor 100 110,.shr 111 31,.literal (BitVec.ofNat 32 1),.bxor 112 113,.shr 93 2,.literal (BitVec.ofNat 32 1),.band 115 116,.bnot 117,.literal (BitVec.ofNat 32 1),.badd 118 119,.shr 93 1,.literal (BitVec.ofNat 32 1),.band 121 122,.bnot 123,.literal (BitVec.ofNat 32 1),.badd 124 125,.shr 93 0,.literal (BitVec.ofNat 32 1),.band 127 128,.bnot 129,.literal (BitVec.ofNat 32 1),.badd 130 131,.band 132 9,.shr 93 0,.literal (BitVec.ofNat 32 1),.band 134 135,.bnot 136,.literal (BitVec.ofNat 32 1),.badd 137 138,.bnot 139,.band 140 8,.bxor 133 141,.band 126 142,.shr 93 1,.literal (BitVec.ofNat 32 1),.band 144 145,.bnot 146,.literal (BitVec.ofNat 32 1),.badd 147 148,.bnot 149,.shr 93 0,.literal (BitVec.ofNat 32 1),.band 151 152,.bnot 153,.literal (BitVec.ofNat 32 1),.badd 154 155,.band 156 7,.shr 93 0,.literal (BitVec.ofNat 32 1),.band 158 159,.bnot 160]
theorem partPartition1 : partOps1=ArtifactPathFrameGroup1.partOps := rfl
theorem partChecked1 : ArtifactPathFrameGroup1.partBytes=statementBytes 98 (partOps1.map lower) := by
  rw [partPartition1]
  exact ArtifactPathFrameGroup1.partChecked
theorem partLength1 : partOps1.length=64 := rfl
def partOps2 : List WordIR.Op := [.literal (BitVec.ofNat 32 1),.badd 161 162,.bnot 163,.band 164 6,.bxor 157 165,.band 150 166,.bxor 143 167,.band 120 168,.shr 93 2,.literal (BitVec.ofNat 32 1),.band 170 171,.bnot 172,.literal (BitVec.ofNat 32 1),.badd 173 174,.bnot 175,.shr 93 1,.literal (BitVec.ofNat 32 1),.band 177 178,.bnot 179,.literal (BitVec.ofNat 32 1),.badd 180 181,.shr 93 0,.literal (BitVec.ofNat 32 1),.band 183 184,.bnot 185,.literal (BitVec.ofNat 32 1),.badd 186 187,.band 188 5,.shr 93 0,.literal (BitVec.ofNat 32 1),.band 190 191,.bnot 192,.literal (BitVec.ofNat 32 1),.badd 193 194,.bnot 195,.band 196 4,.bxor 189 197,.band 182 198,.shr 93 1,.literal (BitVec.ofNat 32 1),.band 200 201,.bnot 202,.literal (BitVec.ofNat 32 1),.badd 203 204,.bnot 205,.shr 93 0,.literal (BitVec.ofNat 32 1),.band 207 208,.bnot 209,.literal (BitVec.ofNat 32 1),.badd 210 211,.band 212 3,.shr 93 0,.literal (BitVec.ofNat 32 1),.band 214 215,.bnot 216,.literal (BitVec.ofNat 32 1),.badd 217 218,.bnot 219,.band 220 2,.bxor 213 221,.band 206 222,.bxor 199 223,.band 176 224]
theorem partPartition2 : partOps2=ArtifactPathFrameGroup2.partOps := rfl
theorem partChecked2 : ArtifactPathFrameGroup2.partBytes=statementBytes 162 (partOps2.map lower) := by
  rw [partPartition2]
  exact ArtifactPathFrameGroup2.partChecked
theorem partLength2 : partOps2.length=64 := rfl
def partOps3 : List WordIR.Op := [.bxor 169 225,.shr 93 3,.literal (BitVec.ofNat 32 0),.bnot 228,.band 227 229,.shr 93 3,.literal (BitVec.ofNat 32 0),.bnot 232,.bxor 231 233,.shr 93 3,.literal (BitVec.ofNat 32 0),.bnot 236,.badd 235 237,.bnot 238,.band 234 239,.bxor 230 240,.shr 241 31,.literal (BitVec.ofNat 32 1),.bxor 242 243,.shr 96 0,.literal (BitVec.ofNat 32 1),.band 245 246,.bnot 247,.literal (BitVec.ofNat 32 1),.badd 248 249,.shr 226 1,.band 250 251,.shr 96 0,.literal (BitVec.ofNat 32 1),.band 253 254,.bnot 255,.literal (BitVec.ofNat 32 1),.badd 256 257,.bnot 258,.band 259 226,.bxor 252 260,.shr 96 1,.literal (BitVec.ofNat 32 1),.band 262 263,.bnot 264,.literal (BitVec.ofNat 32 1),.badd 265 266,.shr 261 2,.band 267 268,.shr 96 1,.literal (BitVec.ofNat 32 1),.band 270 271,.bnot 272,.literal (BitVec.ofNat 32 1),.badd 273 274,.bnot 275,.band 276 261,.bxor 269 277,.shr 96 2,.literal (BitVec.ofNat 32 1),.band 279 280,.bnot 281,.literal (BitVec.ofNat 32 1),.badd 282 283,.shr 278 4,.band 284 285,.shr 96 2,.literal (BitVec.ofNat 32 1),.band 287 288]
theorem partPartition3 : partOps3=ArtifactPathFrameGroup3.partOps := rfl
theorem partChecked3 : ArtifactPathFrameGroup3.partBytes=statementBytes 226 (partOps3.map lower) := by
  rw [partPartition3]
  exact ArtifactPathFrameGroup3.partChecked
theorem partLength3 : partOps3.length=64 := rfl
def partOps4 : List WordIR.Op := [.bnot 289,.literal (BitVec.ofNat 32 1),.badd 290 291,.bnot 292,.band 293 278,.bxor 286 294,.shr 96 3,.literal (BitVec.ofNat 32 1),.band 296 297,.bnot 298,.literal (BitVec.ofNat 32 1),.badd 299 300,.shr 295 8,.band 301 302,.shr 96 3,.literal (BitVec.ofNat 32 1),.band 304 305,.bnot 306,.literal (BitVec.ofNat 32 1),.badd 307 308,.bnot 309,.band 310 295,.bxor 303 311,.shr 96 4,.literal (BitVec.ofNat 32 1),.band 313 314,.bnot 315,.literal (BitVec.ofNat 32 1),.badd 316 317,.shr 312 16,.band 318 319,.shr 96 4,.literal (BitVec.ofNat 32 1),.band 321 322,.bnot 323,.literal (BitVec.ofNat 32 1),.badd 324 325,.bnot 326,.band 327 312,.bxor 320 328,.shr 96 5,.literal (BitVec.ofNat 32 0),.bnot 331,.band 330 332,.shr 96 5,.literal (BitVec.ofNat 32 0),.bnot 335,.bxor 334 336,.shr 96 5,.literal (BitVec.ofNat 32 0),.bnot 339,.badd 338 340,.bnot 341,.band 337 342,.bxor 333 343,.shr 344 31,.literal (BitVec.ofNat 32 1),.bxor 345 346,.shr 329 0,.literal (BitVec.ofNat 32 1),.band 348 349,.bnot 350,.literal (BitVec.ofNat 32 1),.badd 351 352]
theorem partPartition4 : partOps4=ArtifactPathFrameGroup4.partOps := rfl
theorem partChecked4 : ArtifactPathFrameGroup4.partBytes=statementBytes 290 (partOps4.map lower) := by
  rw [partPartition4]
  exact ArtifactPathFrameGroup4.partChecked
theorem partLength4 : partOps4.length=64 := rfl
def partOps5 : List WordIR.Op := [.band 353 18,.bnot 350,.literal (BitVec.ofNat 32 1),.badd 355 356,.bnot 357,.band 358 10,.bxor 354 359,.bnot 350,.literal (BitVec.ofNat 32 1),.badd 361 362,.band 363 19,.bnot 350,.literal (BitVec.ofNat 32 1),.badd 365 366,.bnot 367,.band 368 11,.bxor 364 369,.bnot 350,.literal (BitVec.ofNat 32 1),.badd 371 372,.band 373 20,.bnot 350,.literal (BitVec.ofNat 32 1),.badd 375 376,.bnot 377,.band 378 12,.bxor 374 379,.bnot 350,.literal (BitVec.ofNat 32 1),.badd 381 382,.band 383 21,.bnot 350,.literal (BitVec.ofNat 32 1),.badd 385 386,.bnot 387,.band 388 13,.bxor 384 389,.bnot 350,.literal (BitVec.ofNat 32 1),.badd 391 392,.band 393 22,.bnot 350,.literal (BitVec.ofNat 32 1),.badd 395 396,.bnot 397,.band 398 14,.bxor 394 399,.bnot 350,.literal (BitVec.ofNat 32 1),.badd 401 402,.band 403 23,.bnot 350,.literal (BitVec.ofNat 32 1),.badd 405 406,.bnot 407,.band 408 15,.bxor 404 409,.bnot 350,.literal (BitVec.ofNat 32 1),.badd 411 412,.band 413 24,.bnot 350,.literal (BitVec.ofNat 32 1),.badd 415 416]
theorem partPartition5 : partOps5=ArtifactPathFrameGroup5.partOps := rfl
theorem partChecked5 : ArtifactPathFrameGroup5.partBytes=statementBytes 354 (partOps5.map lower) := by
  rw [partPartition5]
  exact ArtifactPathFrameGroup5.partChecked
theorem partLength5 : partOps5.length=64 := rfl
def partOps6 : List WordIR.Op := [.bnot 417,.band 418 16,.bxor 414 419,.bnot 350,.literal (BitVec.ofNat 32 1),.badd 421 422,.band 423 25,.bnot 350,.literal (BitVec.ofNat 32 1),.badd 425 426,.bnot 427,.band 428 17,.bxor 424 429,.bnot 350,.literal (BitVec.ofNat 32 1),.badd 431 432,.band 433 28,.bnot 350,.literal (BitVec.ofNat 32 1),.badd 435 436,.bnot 437,.band 438 26,.bxor 434 439,.bnot 350,.literal (BitVec.ofNat 32 1),.badd 441 442,.band 443 29,.bnot 350,.literal (BitVec.ofNat 32 1),.badd 445 446,.bnot 447,.band 448 27,.bxor 444 449,.bnot 350,.literal (BitVec.ofNat 32 1),.badd 451 452,.band 453 31,.bnot 350,.literal (BitVec.ofNat 32 1),.badd 455 456,.bnot 457,.band 458 30,.bxor 454 459,.bnot 350,.literal (BitVec.ofNat 32 1),.badd 461 462,.band 463 33,.bnot 350,.literal (BitVec.ofNat 32 1),.badd 465 466,.bnot 467,.band 468 32,.bxor 464 469,.bnot 350,.literal (BitVec.ofNat 32 1),.badd 471 472,.band 473 10,.bnot 350,.literal (BitVec.ofNat 32 1),.badd 475 476,.bnot 477,.band 478 18,.bxor 474 479,.bnot 350]
theorem partPartition6 : partOps6=ArtifactPathFrameGroup6.partOps := rfl
theorem partChecked6 : ArtifactPathFrameGroup6.partBytes=statementBytes 418 (partOps6.map lower) := by
  rw [partPartition6]
  exact ArtifactPathFrameGroup6.partChecked
theorem partLength6 : partOps6.length=64 := rfl
def partOps7 : List WordIR.Op := [.literal (BitVec.ofNat 32 1),.badd 481 482,.band 483 11,.bnot 350,.literal (BitVec.ofNat 32 1),.badd 485 486,.bnot 487,.band 488 19,.bxor 484 489,.bnot 350,.literal (BitVec.ofNat 32 1),.badd 491 492,.band 493 12,.bnot 350,.literal (BitVec.ofNat 32 1),.badd 495 496,.bnot 497,.band 498 20,.bxor 494 499,.bnot 350,.literal (BitVec.ofNat 32 1),.badd 501 502,.band 503 13,.bnot 350,.literal (BitVec.ofNat 32 1),.badd 505 506,.bnot 507,.band 508 21,.bxor 504 509,.bnot 350,.literal (BitVec.ofNat 32 1),.badd 511 512,.band 513 14,.bnot 350,.literal (BitVec.ofNat 32 1),.badd 515 516,.bnot 517,.band 518 22,.bxor 514 519,.bnot 350,.literal (BitVec.ofNat 32 1),.badd 521 522,.band 523 15,.bnot 350,.literal (BitVec.ofNat 32 1),.badd 525 526,.bnot 527,.band 528 23,.bxor 524 529,.bnot 350,.literal (BitVec.ofNat 32 1),.badd 531 532,.band 533 16,.bnot 350,.literal (BitVec.ofNat 32 1),.badd 535 536,.bnot 537,.band 538 24,.bxor 534 539,.bnot 350,.literal (BitVec.ofNat 32 1),.badd 541 542,.band 543 17,.bnot 350]
theorem partPartition7 : partOps7=ArtifactPathFrameGroup7.partOps := rfl
theorem partChecked7 : ArtifactPathFrameGroup7.partBytes=statementBytes 482 (partOps7.map lower) := by
  rw [partPartition7]
  exact ArtifactPathFrameGroup7.partChecked
theorem partLength7 : partOps7.length=64 := rfl
def partOps8 : List WordIR.Op := [.literal (BitVec.ofNat 32 1),.badd 545 546,.bnot 547,.band 548 25,.bxor 544 549,.bnot 350,.literal (BitVec.ofNat 32 1),.badd 551 552,.band 553 26,.bnot 350,.literal (BitVec.ofNat 32 1),.badd 555 556,.bnot 557,.band 558 28,.bxor 554 559,.bnot 350,.literal (BitVec.ofNat 32 1),.badd 561 562,.band 563 27,.bnot 350,.literal (BitVec.ofNat 32 1),.badd 565 566,.bnot 567,.band 568 29,.bxor 564 569,.bnot 350,.literal (BitVec.ofNat 32 1),.badd 571 572,.band 573 30,.bnot 350,.literal (BitVec.ofNat 32 1),.badd 575 576,.bnot 577,.band 578 31,.bxor 574 579,.bnot 350,.literal (BitVec.ofNat 32 1),.badd 581 582,.band 583 32,.bnot 350,.literal (BitVec.ofNat 32 1),.badd 585 586,.bnot 587,.band 588 33,.bxor 584 589,.shr 350 1,.literal (BitVec.ofNat 32 0),.bnot 592,.band 591 593,.shr 350 1,.literal (BitVec.ofNat 32 0),.bnot 596,.bxor 595 597,.shr 350 1,.literal (BitVec.ofNat 32 0),.bnot 600,.badd 599 601,.bnot 602,.band 598 603,.bxor 594 604,.shr 605 31,.literal (BitVec.ofNat 32 1),.bxor 606 607,.badd 440 560]
theorem partPartition8 : partOps8=ArtifactPathFrameGroup8.partOps := rfl
theorem partChecked8 : ArtifactPathFrameGroup8.partBytes=statementBytes 546 (partOps8.map lower) := by
  rw [partPartition8]
  exact ArtifactPathFrameGroup8.partChecked
theorem partLength8 : partOps8.length=64 := rfl
def partOps9 : List WordIR.Op := [.badd 450 570,.band 440 560,.bxor 440 560,.badd 440 560,.bnot 613,.band 612 614,.bxor 611 615,.shr 616 31,.badd 610 617,.literal (BitVec.ofNat 32 0),.bnot 619,.band 450 620,.literal (BitVec.ofNat 32 0),.bnot 622,.bxor 450 623,.literal (BitVec.ofNat 32 0),.bnot 625,.badd 450 626,.bnot 627,.band 624 628,.bxor 621 629,.shr 630 31,.literal (BitVec.ofNat 32 1),.bxor 631 632,.literal (BitVec.ofNat 32 1048576),.bnot 634,.band 440 635,.literal (BitVec.ofNat 32 1048576),.bnot 637,.bxor 440 638,.literal (BitVec.ofNat 32 1048576),.bnot 640,.badd 440 641,.bnot 642,.band 639 643,.bxor 636 644,.shr 645 31,.literal (BitVec.ofNat 32 1),.bxor 646 647,.band 633 648,.literal (BitVec.ofNat 32 0),.bnot 650,.band 570 651,.literal (BitVec.ofNat 32 0),.bnot 653,.bxor 570 654,.literal (BitVec.ofNat 32 0),.bnot 656,.badd 570 657,.bnot 658,.band 655 659,.bxor 652 660,.shr 661 31,.literal (BitVec.ofNat 32 1),.bxor 662 663,.literal (BitVec.ofNat 32 1048576),.bnot 665,.band 560 666,.literal (BitVec.ofNat 32 1048576),.bnot 668,.bxor 560 669,.literal (BitVec.ofNat 32 1048576),.bnot 671,.badd 560 672]
theorem partPartition9 : partOps9=ArtifactPathFrameGroup9.partOps := rfl
theorem partChecked9 : ArtifactPathFrameGroup9.partBytes=statementBytes 610 (partOps9.map lower) := by
  rw [partPartition9]
  exact ArtifactPathFrameGroup9.partChecked
theorem partLength9 : partOps9.length=64 := rfl
def partOps10 : List WordIR.Op := [.bnot 673,.band 670 674,.bxor 667 675,.shr 676 31,.literal (BitVec.ofNat 32 1),.bxor 677 678,.band 664 679,.band 649 680,.badd 450 570,.band 440 560,.bxor 440 560,.badd 440 560,.bnot 685,.band 684 686,.bxor 683 687,.shr 688 31,.badd 682 689,.literal (BitVec.ofNat 32 0),.bnot 691,.band 690 692,.badd 450 570,.band 440 560,.bxor 440 560,.badd 440 560,.bnot 697,.band 696 698,.bxor 695 699,.shr 700 31,.badd 694 701,.literal (BitVec.ofNat 32 0),.bnot 703,.bxor 702 704,.badd 450 570,.band 440 560,.bxor 440 560,.badd 440 560,.bnot 709,.band 708 710,.bxor 707 711,.shr 712 31,.badd 706 713,.literal (BitVec.ofNat 32 0),.bnot 715,.badd 714 716,.bnot 717,.band 705 718,.bxor 693 719,.shr 720 31,.literal (BitVec.ofNat 32 1),.bxor 721 722,.badd 440 560,.literal (BitVec.ofNat 32 1048576),.bnot 725,.band 724 726,.badd 440 560,.literal (BitVec.ofNat 32 1048576),.bnot 729,.bxor 728 730,.badd 440 560,.literal (BitVec.ofNat 32 1048576),.bnot 733,.badd 732 734,.bnot 735,.band 731 736]
theorem partPartition10 : partOps10=ArtifactPathFrameGroup10.partOps := rfl
theorem partChecked10 : ArtifactPathFrameGroup10.partBytes=statementBytes 674 (partOps10.map lower) := by
  rw [partPartition10]
  exact ArtifactPathFrameGroup10.partChecked
theorem partLength10 : partOps10.length=64 := rfl
def partOps11 : List WordIR.Op := [.bxor 727 737,.shr 738 31,.literal (BitVec.ofNat 32 1),.bxor 739 740,.band 723 741,.band 681 742,.band 460 580,.band 470 590,.shr 460 1,.literal (BitVec.ofNat 32 0),.bnot 747,.band 746 748,.shr 460 1,.literal (BitVec.ofNat 32 0),.bnot 751,.bxor 750 752,.shr 460 1,.literal (BitVec.ofNat 32 0),.bnot 755,.badd 754 756,.bnot 757,.band 753 758,.bxor 749 759,.shr 760 31,.literal (BitVec.ofNat 32 1),.bxor 761 762,.shr 580 1,.literal (BitVec.ofNat 32 0),.bnot 765,.band 764 766,.shr 580 1,.literal (BitVec.ofNat 32 0),.bnot 769,.bxor 768 770,.shr 580 1,.literal (BitVec.ofNat 32 0),.bnot 773,.badd 772 774,.bnot 775,.band 771 776,.bxor 767 777,.shr 778 31,.literal (BitVec.ofNat 32 1),.bxor 779 780,.shr 470 1,.literal (BitVec.ofNat 32 0),.bnot 783,.band 782 784,.shr 470 1,.literal (BitVec.ofNat 32 0),.bnot 787,.bxor 786 788,.shr 470 1,.literal (BitVec.ofNat 32 0),.bnot 791,.badd 790 792,.bnot 793,.band 789 794,.bxor 785 795,.shr 796 31,.literal (BitVec.ofNat 32 1),.bxor 797 798,.shr 590 1,.literal (BitVec.ofNat 32 0)]
theorem partPartition11 : partOps11=ArtifactPathFrameGroup11.partOps := rfl
theorem partChecked11 : ArtifactPathFrameGroup11.partBytes=statementBytes 738 (partOps11.map lower) := by
  rw [partPartition11]
  exact ArtifactPathFrameGroup11.partChecked
theorem partLength11 : partOps11.length=64 := rfl
def partOps12 : List WordIR.Op := [.bnot 801,.band 800 802,.shr 590 1,.literal (BitVec.ofNat 32 0),.bnot 805,.bxor 804 806,.shr 590 1,.literal (BitVec.ofNat 32 0),.bnot 809,.badd 808 810,.bnot 811,.band 807 812,.bxor 803 813,.shr 814 31,.literal (BitVec.ofNat 32 1),.bxor 815 816,.literal (BitVec.ofNat 32 99),.literal (BitVec.ofNat 32 111),.literal (BitVec.ofNat 32 114),.literal (BitVec.ofNat 32 101),.literal (BitVec.ofNat 32 48),.literal (BitVec.ofNat 32 51),.literal (BitVec.ofNat 32 51),.literal (BitVec.ofNat 32 46),.literal (BitVec.ofNat 32 115),.literal (BitVec.ofNat 32 101),.literal (BitVec.ofNat 32 109),.literal (BitVec.ofNat 32 97),.literal (BitVec.ofNat 32 110),.literal (BitVec.ofNat 32 116),.literal (BitVec.ofNat 32 105),.literal (BitVec.ofNat 32 99),.literal (BitVec.ofNat 32 46),.literal (BitVec.ofNat 32 118),.literal (BitVec.ofNat 32 49),.literal (BitVec.ofNat 32 0),.literal (BitVec.ofNat 32 81),.literal (BitVec.ofNat 32 0),.shr 0 0,.literal (BitVec.ofNat 32 255),.band 840 841,.shr 38 0,.literal (BitVec.ofNat 32 255),.band 843 844,.shr 38 8,.literal (BitVec.ofNat 32 255),.band 846 847,.shr 360 0,.literal (BitVec.ofNat 32 255),.band 849 850,.shr 360 8,.literal (BitVec.ofNat 32 255),.band 852 853,.shr 360 16,.literal (BitVec.ofNat 32 255),.band 855 856,.shr 360 24,.literal (BitVec.ofNat 32 255),.band 858 859,.shr 370 0,.literal (BitVec.ofNat 32 255),.band 861 862,.shr 370 8,.literal (BitVec.ofNat 32 255)]
theorem partPartition12 : partOps12=ArtifactPathFrameGroup12.partOps := rfl
theorem partChecked12 : ArtifactPathFrameGroup12.partBytes=statementBytes 802 (partOps12.map lower) := by
  rw [partPartition12]
  exact ArtifactPathFrameGroup12.partChecked
theorem partLength12 : partOps12.length=64 := rfl
def partOps13 : List WordIR.Op := [.band 864 865,.shr 370 16,.literal (BitVec.ofNat 32 255),.band 867 868,.shr 370 24,.literal (BitVec.ofNat 32 255),.band 870 871,.shr 380 0,.literal (BitVec.ofNat 32 255),.band 873 874,.shr 380 8,.literal (BitVec.ofNat 32 255),.band 876 877,.shr 380 16,.literal (BitVec.ofNat 32 255),.band 879 880,.shr 380 24,.literal (BitVec.ofNat 32 255),.band 882 883,.shr 390 0,.literal (BitVec.ofNat 32 255),.band 885 886,.shr 390 8,.literal (BitVec.ofNat 32 255),.band 888 889,.shr 390 16,.literal (BitVec.ofNat 32 255),.band 891 892,.shr 390 24,.literal (BitVec.ofNat 32 255),.band 894 895,.shr 400 0,.literal (BitVec.ofNat 32 255),.band 897 898,.shr 400 8,.literal (BitVec.ofNat 32 255),.band 900 901,.shr 400 16,.literal (BitVec.ofNat 32 255),.band 903 904,.shr 400 24,.literal (BitVec.ofNat 32 255),.band 906 907,.shr 410 0,.literal (BitVec.ofNat 32 255),.band 909 910,.shr 410 8,.literal (BitVec.ofNat 32 255),.band 912 913,.shr 410 16,.literal (BitVec.ofNat 32 255),.band 915 916,.shr 410 24,.literal (BitVec.ofNat 32 255),.band 918 919,.shr 420 0,.literal (BitVec.ofNat 32 255),.band 921 922,.shr 420 8,.literal (BitVec.ofNat 32 255),.band 924 925,.shr 420 16,.literal (BitVec.ofNat 32 255),.band 927 928]
theorem partPartition13 : partOps13=ArtifactPathFrameGroup13.partOps := rfl
theorem partChecked13 : ArtifactPathFrameGroup13.partBytes=statementBytes 866 (partOps13.map lower) := by
  rw [partPartition13]
  exact ArtifactPathFrameGroup13.partChecked
theorem partLength13 : partOps13.length=64 := rfl
def partOps14 : List WordIR.Op := [.shr 420 24,.literal (BitVec.ofNat 32 255),.band 930 931,.shr 430 0,.literal (BitVec.ofNat 32 255),.band 933 934,.shr 430 8,.literal (BitVec.ofNat 32 255),.band 936 937,.shr 430 16,.literal (BitVec.ofNat 32 255),.band 939 940,.shr 430 24,.literal (BitVec.ofNat 32 255),.band 942 943,.shr 480 0,.literal (BitVec.ofNat 32 255),.band 945 946,.shr 480 8,.literal (BitVec.ofNat 32 255),.band 948 949,.shr 480 16,.literal (BitVec.ofNat 32 255),.band 951 952,.shr 480 24,.literal (BitVec.ofNat 32 255),.band 954 955,.shr 490 0,.literal (BitVec.ofNat 32 255),.band 957 958,.shr 490 8,.literal (BitVec.ofNat 32 255),.band 960 961,.shr 490 16,.literal (BitVec.ofNat 32 255),.band 963 964,.shr 490 24,.literal (BitVec.ofNat 32 255),.band 966 967,.shr 500 0,.literal (BitVec.ofNat 32 255),.band 969 970,.shr 500 8,.literal (BitVec.ofNat 32 255),.band 972 973,.shr 500 16,.literal (BitVec.ofNat 32 255),.band 975 976,.shr 500 24,.literal (BitVec.ofNat 32 255),.band 978 979,.shr 510 0,.literal (BitVec.ofNat 32 255),.band 981 982,.shr 510 8,.literal (BitVec.ofNat 32 255),.band 984 985,.shr 510 16,.literal (BitVec.ofNat 32 255),.band 987 988,.shr 510 24,.literal (BitVec.ofNat 32 255),.band 990 991,.shr 520 0]
theorem partPartition14 : partOps14=ArtifactPathFrameGroup14.partOps := rfl
theorem partChecked14 : ArtifactPathFrameGroup14.partBytes=statementBytes 930 (partOps14.map lower) := by
  rw [partPartition14]
  exact ArtifactPathFrameGroup14.partChecked
theorem partLength14 : partOps14.length=64 := rfl
def partOps15 : List WordIR.Op := [.literal (BitVec.ofNat 32 255),.band 993 994,.shr 520 8,.literal (BitVec.ofNat 32 255),.band 996 997,.shr 520 16,.literal (BitVec.ofNat 32 255),.band 999 1000,.shr 520 24,.literal (BitVec.ofNat 32 255),.band 1002 1003,.shr 530 0,.literal (BitVec.ofNat 32 255),.band 1005 1006,.shr 530 8,.literal (BitVec.ofNat 32 255),.band 1008 1009,.shr 530 16,.literal (BitVec.ofNat 32 255),.band 1011 1012,.shr 530 24,.literal (BitVec.ofNat 32 255),.band 1014 1015,.shr 540 0,.literal (BitVec.ofNat 32 255),.band 1017 1018,.shr 540 8,.literal (BitVec.ofNat 32 255),.band 1020 1021,.shr 540 16,.literal (BitVec.ofNat 32 255),.band 1023 1024,.shr 540 24,.literal (BitVec.ofNat 32 255),.band 1026 1027,.shr 550 0,.literal (BitVec.ofNat 32 255),.band 1029 1030,.shr 550 8,.literal (BitVec.ofNat 32 255),.band 1032 1033,.shr 550 16,.literal (BitVec.ofNat 32 255),.band 1035 1036,.shr 550 24,.literal (BitVec.ofNat 32 255),.band 1038 1039,.shr 440 0,.literal (BitVec.ofNat 32 255),.band 1041 1042,.shr 440 8,.literal (BitVec.ofNat 32 255),.band 1044 1045,.shr 440 16,.literal (BitVec.ofNat 32 255),.band 1047 1048,.shr 440 24,.literal (BitVec.ofNat 32 255),.band 1050 1051,.shr 450 0,.literal (BitVec.ofNat 32 255),.band 1053 1054,.shr 450 8,.literal (BitVec.ofNat 32 255)]
theorem partPartition15 : partOps15=ArtifactPathFrameGroup15.partOps := rfl
theorem partChecked15 : ArtifactPathFrameGroup15.partBytes=statementBytes 994 (partOps15.map lower) := by
  rw [partPartition15]
  exact ArtifactPathFrameGroup15.partChecked
theorem partLength15 : partOps15.length=64 := rfl
def partOps16 : List WordIR.Op := [.band 1056 1057,.shr 450 16,.literal (BitVec.ofNat 32 255),.band 1059 1060,.shr 450 24,.literal (BitVec.ofNat 32 255),.band 1062 1063,.shr 560 0,.literal (BitVec.ofNat 32 255),.band 1065 1066,.shr 560 8,.literal (BitVec.ofNat 32 255),.band 1068 1069,.shr 560 16,.literal (BitVec.ofNat 32 255),.band 1071 1072,.shr 560 24,.literal (BitVec.ofNat 32 255),.band 1074 1075,.shr 570 0,.literal (BitVec.ofNat 32 255),.band 1077 1078,.shr 570 8,.literal (BitVec.ofNat 32 255),.band 1080 1081,.shr 570 16,.literal (BitVec.ofNat 32 255),.band 1083 1084,.shr 570 24,.literal (BitVec.ofNat 32 255),.band 1086 1087,.shr 609 0,.literal (BitVec.ofNat 32 255),.band 1089 1090,.shr 609 8,.literal (BitVec.ofNat 32 255),.band 1092 1093,.shr 609 16,.literal (BitVec.ofNat 32 255),.band 1095 1096,.shr 609 24,.literal (BitVec.ofNat 32 255),.band 1098 1099,.shr 618 0,.literal (BitVec.ofNat 32 255),.band 1101 1102,.shr 618 8,.literal (BitVec.ofNat 32 255),.band 1104 1105,.shr 618 16,.literal (BitVec.ofNat 32 255),.band 1107 1108,.shr 618 24,.literal (BitVec.ofNat 32 255),.band 1110 1111,.shr 744 0,.literal (BitVec.ofNat 32 255),.band 1113 1114,.shr 745 0,.literal (BitVec.ofNat 32 255),.band 1116 1117,.literal (BitVec.ofNat 32 0),.bnot 1119,.band 0 1120]
theorem partPartition16 : partOps16=ArtifactPathFrameGroup16.partOps := rfl
theorem partChecked16 : ArtifactPathFrameGroup16.partBytes=statementBytes 1058 (partOps16.map lower) := by
  rw [partPartition16]
  exact ArtifactPathFrameGroup16.partChecked
theorem partLength16 : partOps16.length=64 := rfl
def partOps17 : List WordIR.Op := [.literal (BitVec.ofNat 32 0),.bnot 1122,.bxor 0 1123,.literal (BitVec.ofNat 32 0),.bnot 1125,.badd 0 1126,.bnot 1127,.band 1124 1128,.bxor 1121 1129,.shr 1130 31,.literal (BitVec.ofNat 32 3),.bnot 0,.band 1132 1133,.literal (BitVec.ofNat 32 3),.bnot 0,.bxor 1135 1136,.literal (BitVec.ofNat 32 3),.bnot 0,.badd 1138 1139,.bnot 1140,.band 1137 1141,.bxor 1134 1142,.shr 1143 31,.band 1131 1144,.shr 38 8,.literal (BitVec.ofNat 32 0),.bnot 1147,.band 1146 1148,.shr 38 8,.literal (BitVec.ofNat 32 0),.bnot 1151,.bxor 1150 1152,.shr 38 8,.literal (BitVec.ofNat 32 0),.bnot 1155,.badd 1154 1156,.bnot 1157,.band 1153 1158,.bxor 1149 1159,.shr 1160 31,.literal (BitVec.ofNat 32 1),.bxor 1161 1162,.shr 744 1,.literal (BitVec.ofNat 32 0),.bnot 1165,.band 1164 1166,.shr 744 1,.literal (BitVec.ofNat 32 0),.bnot 1169,.bxor 1168 1170,.shr 744 1,.literal (BitVec.ofNat 32 0),.bnot 1173,.badd 1172 1174,.bnot 1175,.band 1171 1176,.bxor 1167 1177,.shr 1178 31,.literal (BitVec.ofNat 32 1),.bxor 1179 1180,.shr 745 1,.literal (BitVec.ofNat 32 0),.bnot 1183,.band 1182 1184]
theorem partPartition17 : partOps17=ArtifactPathFrameGroup17.partOps := rfl
theorem partChecked17 : ArtifactPathFrameGroup17.partBytes=statementBytes 1122 (partOps17.map lower) := by
  rw [partPartition17]
  exact ArtifactPathFrameGroup17.partChecked
theorem partLength17 : partOps17.length=64 := rfl
def partOps18 : List WordIR.Op := [.shr 745 1,.literal (BitVec.ofNat 32 0),.bnot 1187,.bxor 1186 1188,.shr 745 1,.literal (BitVec.ofNat 32 0),.bnot 1191,.badd 1190 1192,.bnot 1193,.band 1189 1194,.bxor 1185 1195,.shr 1196 31,.literal (BitVec.ofNat 32 1),.bxor 1197 1198,.badd 440 560,.bxor 1200 609,.literal (BitVec.ofNat 32 0),.bnot 1202,.band 1201 1203,.badd 440 560,.bxor 1205 609,.literal (BitVec.ofNat 32 0),.bnot 1207,.bxor 1206 1208,.badd 440 560,.bxor 1210 609,.literal (BitVec.ofNat 32 0),.bnot 1212,.badd 1211 1213,.bnot 1214,.band 1209 1215,.bxor 1204 1216,.shr 1217 31,.literal (BitVec.ofNat 32 1),.bxor 1218 1219,.badd 450 570,.band 440 560,.bxor 440 560,.badd 440 560,.bnot 1224,.band 1223 1225,.bxor 1222 1226,.shr 1227 31,.badd 1221 1228,.bxor 1229 618,.literal (BitVec.ofNat 32 0),.bnot 1231,.band 1230 1232,.badd 450 570,.band 440 560,.bxor 440 560,.badd 440 560,.bnot 1237,.band 1236 1238,.bxor 1235 1239,.shr 1240 31,.badd 1234 1241,.bxor 1242 618,.literal (BitVec.ofNat 32 0),.bnot 1244,.bxor 1243 1245,.badd 450 570,.band 440 560,.bxor 440 560]
theorem partPartition18 : partOps18=ArtifactPathFrameGroup18.partOps := rfl
theorem partChecked18 : ArtifactPathFrameGroup18.partBytes=statementBytes 1186 (partOps18.map lower) := by
  rw [partPartition18]
  exact ArtifactPathFrameGroup18.partChecked
theorem partLength18 : partOps18.length=64 := rfl
def partOps19 : List WordIR.Op := [.badd 440 560,.bnot 1250,.band 1249 1251,.bxor 1248 1252,.shr 1253 31,.badd 1247 1254,.bxor 1255 618,.literal (BitVec.ofNat 32 0),.bnot 1257,.badd 1256 1258,.bnot 1259,.band 1246 1260,.bxor 1233 1261,.shr 1262 31,.literal (BitVec.ofNat 32 1),.bxor 1263 1264,.literal (BitVec.ofNat 32 0),.bnot 1266,.band 450 1267,.literal (BitVec.ofNat 32 0),.bnot 1269,.bxor 450 1270,.literal (BitVec.ofNat 32 0),.bnot 1272,.badd 450 1273,.bnot 1274,.band 1271 1275,.bxor 1268 1276,.shr 1277 31,.literal (BitVec.ofNat 32 1),.bxor 1278 1279,.literal (BitVec.ofNat 32 1048576),.bnot 1281,.band 440 1282,.literal (BitVec.ofNat 32 1048576),.bnot 1284,.bxor 440 1285,.literal (BitVec.ofNat 32 1048576),.bnot 1287,.badd 440 1288,.bnot 1289,.band 1286 1290,.bxor 1283 1291,.shr 1292 31,.literal (BitVec.ofNat 32 1),.bxor 1293 1294,.band 1280 1295,.literal (BitVec.ofNat 32 0),.bnot 1297,.band 570 1298,.literal (BitVec.ofNat 32 0),.bnot 1300,.bxor 570 1301,.literal (BitVec.ofNat 32 0),.bnot 1303,.badd 570 1304,.bnot 1305,.band 1302 1306,.bxor 1299 1307,.shr 1308 31,.literal (BitVec.ofNat 32 1),.bxor 1309 1310,.literal (BitVec.ofNat 32 1048576),.bnot 1312]
theorem partPartition19 : partOps19=ArtifactPathFrameGroup19.partOps := rfl
theorem partChecked19 : ArtifactPathFrameGroup19.partBytes=statementBytes 1250 (partOps19.map lower) := by
  rw [partPartition19]
  exact ArtifactPathFrameGroup19.partChecked
theorem partLength19 : partOps19.length=64 := rfl
def partOps20 : List WordIR.Op := [.band 560 1313,.literal (BitVec.ofNat 32 1048576),.bnot 1315,.bxor 560 1316,.literal (BitVec.ofNat 32 1048576),.bnot 1318,.badd 560 1319,.bnot 1320,.band 1317 1321,.bxor 1314 1322,.shr 1323 31,.literal (BitVec.ofNat 32 1),.bxor 1324 1325,.band 1311 1326,.band 1296 1327,.badd 450 570,.band 440 560,.bxor 440 560,.badd 440 560,.bnot 1332,.band 1331 1333,.bxor 1330 1334,.shr 1335 31,.badd 1329 1336,.literal (BitVec.ofNat 32 0),.bnot 1338,.band 1337 1339,.badd 450 570,.band 440 560,.bxor 440 560,.badd 440 560,.bnot 1344,.band 1343 1345,.bxor 1342 1346,.shr 1347 31,.badd 1341 1348,.literal (BitVec.ofNat 32 0),.bnot 1350,.bxor 1349 1351,.badd 450 570,.band 440 560,.bxor 440 560,.badd 440 560,.bnot 1356,.band 1355 1357,.bxor 1354 1358,.shr 1359 31,.badd 1353 1360,.literal (BitVec.ofNat 32 0),.bnot 1362,.badd 1361 1363,.bnot 1364,.band 1352 1365,.bxor 1340 1366,.shr 1367 31,.literal (BitVec.ofNat 32 1),.bxor 1368 1369,.badd 440 560,.literal (BitVec.ofNat 32 1048576),.bnot 1372,.band 1371 1373,.badd 440 560,.literal (BitVec.ofNat 32 1048576),.bnot 1376]
theorem partPartition20 : partOps20=ArtifactPathFrameGroup20.partOps := rfl
theorem partChecked20 : ArtifactPathFrameGroup20.partBytes=statementBytes 1314 (partOps20.map lower) := by
  rw [partPartition20]
  exact ArtifactPathFrameGroup20.partChecked
theorem partLength20 : partOps20.length=64 := rfl
def partOps21 : List WordIR.Op := [.bxor 1375 1377,.badd 440 560,.literal (BitVec.ofNat 32 1048576),.bnot 1380,.badd 1379 1381,.bnot 1382,.band 1378 1383,.bxor 1374 1384,.shr 1385 31,.literal (BitVec.ofNat 32 1),.bxor 1386 1387,.band 1370 1388,.band 1328 1389]
theorem partPartition21 : partOps21=ArtifactPathFrameGroup21.partOps := rfl
theorem partChecked21 : ArtifactPathFrameGroup21.partBytes=statementBytes 1378 (partOps21.map lower) := by
  rw [partPartition21]
  exact ArtifactPathFrameGroup21.partChecked
theorem partLength21 : partOps21.length=13 := rfl
def blocks : List (List WordIR.Op) := [partOps0,partOps1,partOps2,partOps3,partOps4,partOps5,partOps6,partOps7,partOps8,partOps9,partOps10,partOps11,partOps12,partOps13,partOps14,partOps15,partOps16,partOps17,partOps18,partOps19,partOps20,partOps21]
def actualBody : List Bytes := [ArtifactPathFrameGroup0.partBytes,ArtifactPathFrameGroup1.partBytes,ArtifactPathFrameGroup2.partBytes,ArtifactPathFrameGroup3.partBytes,ArtifactPathFrameGroup4.partBytes,ArtifactPathFrameGroup5.partBytes,ArtifactPathFrameGroup6.partBytes,ArtifactPathFrameGroup7.partBytes,ArtifactPathFrameGroup8.partBytes,ArtifactPathFrameGroup9.partBytes,ArtifactPathFrameGroup10.partBytes,ArtifactPathFrameGroup11.partBytes,ArtifactPathFrameGroup12.partBytes,ArtifactPathFrameGroup13.partBytes,ArtifactPathFrameGroup14.partBytes,ArtifactPathFrameGroup15.partBytes,ArtifactPathFrameGroup16.partBytes,ArtifactPathFrameGroup17.partBytes,ArtifactPathFrameGroup18.partBytes,ArtifactPathFrameGroup19.partBytes,ArtifactPathFrameGroup20.partBytes,ArtifactPathFrameGroup21.partBytes]
def actualHeader : Bytes := ArtifactPathFrameHeader.actualHeader
def actualFooter : Bytes := ArtifactPathFrameFooter.actualFooter
def actualBytes : Bytes := actualHeader++actualBody.flatten++actualFooter
theorem partition_checked : ActualPathFrameIR.program.operations=blocks.flatten := rfl
theorem header_checked : actualHeader=headerBytes 34 133 ∧ actualHeader.length=732 := ArtifactPathFrameHeader.checked
theorem footer_checked : actualFooter=suffix ActualPathFrameIR.program.outputs ∧ actualFooter.length=1470 := ArtifactPathFrameFooter.checked
theorem body_checked : BlockChain 34 blocks actualBody := by
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
  exact .empty _
theorem actual_size : actualBytes.length≤8388608 := by
  simp only [actualBytes,List.length_append,WordSource.chunk_sizes_exact,actualBody,List.map_cons,List.map_nil,List.sum_cons,List.sum_nil,header_checked.2,footer_checked.2,ArtifactPathFrameGroup0.partSize,ArtifactPathFrameGroup1.partSize,ArtifactPathFrameGroup2.partSize,ArtifactPathFrameGroup3.partSize,ArtifactPathFrameGroup4.partSize,ArtifactPathFrameGroup5.partSize,ArtifactPathFrameGroup6.partSize,ArtifactPathFrameGroup7.partSize,ArtifactPathFrameGroup8.partSize,ArtifactPathFrameGroup9.partSize,ArtifactPathFrameGroup10.partSize,ArtifactPathFrameGroup11.partSize,ArtifactPathFrameGroup12.partSize,ArtifactPathFrameGroup13.partSize,ArtifactPathFrameGroup14.partSize,ArtifactPathFrameGroup15.partSize,ArtifactPathFrameGroup16.partSize,ArtifactPathFrameGroup17.partSize,ArtifactPathFrameGroup18.partSize,ArtifactPathFrameGroup19.partSize,ArtifactPathFrameGroup20.partSize,ArtifactPathFrameGroup21.partSize]
  decide
theorem actual_validated : validate ActualPathFrameIR.program actualBytes=true :=
  validate_from_facts ActualPathFrameIR.program actualBytes ActualPathFrameIR.safe_checked
    (assembled_bytes_exact ActualPathFrameIR.program blocks partition_checked actualHeader actualFooter actualBody header_checked.1 footer_checked.1 body_checked) actual_size
theorem actual_meaning (inputs : Nat → WordIR.Word) : NativeDenotes actualBytes inputs (PathFrameProgram.program.eval inputs) := by
  have result:=actual_bytes_sound ActualPathFrameIR.program actualBytes actual_validated inputs
  rw [ActualPathFrameIR.ir_exact] at result
  exact result
end ArtifactPathFrameBlocks
