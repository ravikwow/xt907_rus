.class public Lcom/android/contacts/model/BaseAccountType$PhoneActionInflater;
.super Lcom/android/contacts/model/BaseAccountType$CommonInflater;
.source "BaseAccountType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/model/BaseAccountType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PhoneActionInflater"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 558
    invoke-direct {p0}, Lcom/android/contacts/model/BaseAccountType$CommonInflater;-><init>()V

    return-void
.end method


# virtual methods
.method protected getTypeLabelResource(Ljava/lang/Integer;)I
    .locals 2
    .param p1, "type"    # Ljava/lang/Integer;

    .prologue
    const v0, 0x7f0c0144

    .line 566
    if-nez p1, :cond_0

    .line 588
    :goto_0
    :pswitch_0
    return v0

    .line 567
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 588
    const v0, 0x7f0c013d

    goto :goto_0

    .line 568
    :pswitch_1
    const v0, 0x7f0c013e

    goto :goto_0

    .line 569
    :pswitch_2
    const v0, 0x7f0c013f

    goto :goto_0

    .line 570
    :pswitch_3
    const v0, 0x7f0c0140

    goto :goto_0

    .line 571
    :pswitch_4
    const v0, 0x7f0c0141

    goto :goto_0

    .line 572
    :pswitch_5
    const v0, 0x7f0c0142

    goto :goto_0

    .line 573
    :pswitch_6
    const v0, 0x7f0c0143

    goto :goto_0

    .line 575
    :pswitch_7
    const v0, 0x7f0c0145

    goto :goto_0

    .line 576
    :pswitch_8
    const v0, 0x7f0c0146

    goto :goto_0

    .line 577
    :pswitch_9
    const v0, 0x7f0c0147

    goto :goto_0

    .line 578
    :pswitch_a
    const v0, 0x7f0c0148

    goto :goto_0

    .line 579
    :pswitch_b
    const v0, 0x7f0c0149

    goto :goto_0

    .line 580
    :pswitch_c
    const v0, 0x7f0c014a

    goto :goto_0

    .line 581
    :pswitch_d
    const v0, 0x7f0c014b

    goto :goto_0

    .line 582
    :pswitch_e
    const v0, 0x7f0c014c

    goto :goto_0

    .line 583
    :pswitch_f
    const v0, 0x7f0c014d

    goto :goto_0

    .line 584
    :pswitch_10
    const v0, 0x7f0c014e

    goto :goto_0

    .line 585
    :pswitch_11
    const v0, 0x7f0c014f

    goto :goto_0

    .line 586
    :pswitch_12
    const v0, 0x7f0c0150

    goto :goto_0

    .line 587
    :pswitch_13
    const v0, 0x7f0c0151

    goto :goto_0

    .line 567
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
    .end packed-switch
.end method

.method protected isCustom(Ljava/lang/Integer;)Z
    .locals 2
    .param p1, "type"    # Ljava/lang/Integer;

    .prologue
    .line 561
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x13

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method