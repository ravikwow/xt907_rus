.class Lcom/android/systemui/statusbar/phone/QuickSettings$11;
.super Lcom/android/systemui/statusbar/phone/QuickSettings$NetworkActivityCallback;
.source "QuickSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/QuickSettings;->addSystemTiles(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/QuickSettings;)V
    .locals 1

    .prologue
    .line 574
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$11;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/QuickSettings$NetworkActivityCallback;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettings$1;)V

    return-void
.end method


# virtual methods
.method public refreshView(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;)V
    .locals 14
    .param p1, "view"    # Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;
    .param p2, "state"    # Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    .prologue
    .line 577
    move-object/from16 v5, p2

    check-cast v5, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RSSIState;

    .line 578
    .local v5, "rssiState":Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RSSIState;
    const v8, 0x7f080050

    invoke-virtual {p1, v8}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 579
    .local v4, "iv":Landroid/widget/ImageView;
    const v8, 0x7f080053

    invoke-virtual {p1, v8}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 580
    .local v3, "iov":Landroid/widget/ImageView;
    const v8, 0x7f080057

    invoke-virtual {p1, v8}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 582
    .local v7, "tv":Landroid/widget/TextView;
    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 583
    iget v8, v5, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RSSIState;->mobileSignalIconId:I

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 585
    iget v8, v5, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RSSIState;->mobileDataTypeIconId:I

    if-lez v8, :cond_0

    .line 586
    iget v8, v5, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RSSIState;->mobileDataTypeIconId:I

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 587
    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 592
    :goto_0
    invoke-virtual {p0, p1, v5}, Lcom/android/systemui/statusbar/phone/QuickSettings$11;->setActivity(Landroid/view/View;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$ActivityState;)V

    .line 594
    iget-object v8, v5, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RSSIState;->mobileNetworkName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 595
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$11;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    # getter for: Lcom/android/systemui/statusbar/phone/QuickSettings;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/systemui/statusbar/phone/QuickSettings;->access$200(Lcom/android/systemui/statusbar/phone/QuickSettings;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b0083

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, v5, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RSSIState;->mobileSignalContentDescription:Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    iget-object v12, v5, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RSSIState;->mobileDataTypeContentDescription:Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x2

    iget-object v12, v5, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RSSIState;->mobileNetworkName:Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 606
    const v8, 0x7f080051

    invoke-virtual {p1, v8}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 608
    .local v2, "iSim":Landroid/widget/ImageView;
    const v8, 0x7f080052

    invoke-virtual {p1, v8}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 610
    .local v1, "iRoam":Landroid/widget/ImageView;
    const v8, 0x7f080054

    invoke-virtual {p1, v8}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 612
    .local v0, "iActivity":Landroid/widget/ImageView;
    const v8, 0x7f08004e

    invoke-virtual {p1, v8}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 615
    .local v6, "tSlot":Landroid/widget/TextView;
    iget v8, v5, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RSSIState;->mobileSimStatusIconId:I

    if-lez v8, :cond_1

    .line 616
    iget v8, v5, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RSSIState;->mobileSimStatusIconId:I

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 617
    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 623
    :goto_1
    iget v8, v5, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RSSIState;->mobileRoamingIconId:I

    if-eqz v8, :cond_2

    .line 624
    iget v8, v5, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RSSIState;->mobileRoamingIconId:I

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 625
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 631
    :goto_2
    iget v8, v5, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RSSIState;->mobileDataActivityIconId:I

    if-eqz v8, :cond_3

    .line 632
    iget v8, v5, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RSSIState;->mobileDataActivityIconId:I

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 633
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 639
    :goto_3
    const-string v8, ""

    iget-object v9, v5, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RSSIState;->mobileSlotLabel:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 640
    const-string v8, "1"

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 641
    const/4 v8, 0x4

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 647
    :goto_4
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$11;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    # getter for: Lcom/android/systemui/statusbar/phone/QuickSettings;->mIsMultiSimEnabled:Z
    invoke-static {v8}, Lcom/android/systemui/statusbar/phone/QuickSettings;->access$1100(Lcom/android/systemui/statusbar/phone/QuickSettings;)Z

    move-result v8

    if-eqz v8, :cond_5

    const-string v8, " "

    :goto_5
    invoke-virtual {p1, v8}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 795
    return-void

    .line 589
    .end local v0    # "iActivity":Landroid/widget/ImageView;
    .end local v1    # "iRoam":Landroid/widget/ImageView;
    .end local v2    # "iSim":Landroid/widget/ImageView;
    .end local v6    # "tSlot":Landroid/widget/TextView;
    :cond_0
    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 590
    const/16 v8, 0x8

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 619
    .restart local v0    # "iActivity":Landroid/widget/ImageView;
    .restart local v1    # "iRoam":Landroid/widget/ImageView;
    .restart local v2    # "iSim":Landroid/widget/ImageView;
    .restart local v6    # "tSlot":Landroid/widget/TextView;
    :cond_1
    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 620
    const/16 v8, 0x8

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 627
    :cond_2
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 628
    const/16 v8, 0x8

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 635
    :cond_3
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 636
    const/16 v8, 0x8

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 643
    :cond_4
    iget-object v8, v5, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RSSIState;->mobileSlotLabel:Ljava/lang/String;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 644
    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    .line 647
    :cond_5
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$11;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    # getter for: Lcom/android/systemui/statusbar/phone/QuickSettings;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/systemui/statusbar/phone/QuickSettings;->access$200(Lcom/android/systemui/statusbar/phone/QuickSettings;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b0083

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v5, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RSSIState;->mobileSlotLabelContentDescription:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v5, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RSSIState;->mobileSimStatusContentDescription:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v5, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RSSIState;->mobileSignalContentDescription:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v5, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RSSIState;->mobileRoamingContentDescription:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v5, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RSSIState;->mobileDataTypeContentDescription:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v5, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RSSIState;->mobileDataActivityContentDescription:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    iget-object v12, v5, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RSSIState;->mobileNetworkName:Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_5
.end method
