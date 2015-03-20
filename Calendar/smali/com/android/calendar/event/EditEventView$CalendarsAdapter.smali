.class Lcom/android/calendar/event/EditEventView$CalendarsAdapter;
.super Landroid/widget/ResourceCursorAdapter;
.source "EditEventView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/event/EditEventView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CalendarsAdapter"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "c"    # Landroid/database/Cursor;

    .prologue
    .line 611
    const v0, 0x7f040014

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;)V

    .line 612
    const v0, 0x7f040013

    invoke-virtual {p0, v0}, Landroid/widget/ResourceCursorAdapter;->setDropDownViewResource(I)V

    .line 613
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 15
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 617
    const v13, 0x7f100030

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 618
    .local v2, "colorBar":Landroid/view/View;
    const-string v13, "calendar_color"

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 619
    .local v3, "colorColumn":I
    const-string v13, "calendar_displayName"

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 620
    .local v7, "nameColumn":I
    const-string v13, "ownerAccount"

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 621
    .local v8, "ownerColumn":I
    if-eqz v2, :cond_0

    .line 622
    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    invoke-static {v13}, Lcom/android/calendar/Utils;->getDisplayColorFromColor(I)I

    move-result v13

    invoke-virtual {v2, v13}, Landroid/view/View;->setBackgroundColor(I)V

    .line 627
    :cond_0
    const-string v13, "account_type"

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 628
    .local v12, "typeColumn":I
    const-string v13, "LOCAL"

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 630
    .local v5, "isLocalAccount":Z
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 631
    .local v11, "res":Landroid/content/res/Resources;
    const v13, 0x7f0c00ad

    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 632
    .local v9, "phoneCalStr":Ljava/lang/String;
    const v13, 0x7f0c00ae

    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 634
    .local v10, "phoneStorageStr":Ljava/lang/String;
    const v13, 0x7f100034

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 635
    .local v6, "name":Landroid/widget/TextView;
    if-eqz v6, :cond_1

    .line 636
    move-object/from16 v0, p3

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 638
    .local v4, "displayName":Ljava/lang/String;
    if-eqz v5, :cond_2

    .line 639
    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 644
    :goto_0
    const v13, 0x7f100035

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 645
    .local v1, "accountName":Landroid/widget/TextView;
    if-eqz v1, :cond_1

    .line 647
    if-eqz v5, :cond_3

    .line 648
    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 653
    :goto_1
    const/4 v13, 0x0

    invoke-virtual {v1, v13}, Landroid/view/View;->setVisibility(I)V

    .line 656
    .end local v1    # "accountName":Landroid/widget/TextView;
    .end local v4    # "displayName":Ljava/lang/String;
    :cond_1
    return-void

    .line 641
    .restart local v4    # "displayName":Ljava/lang/String;
    :cond_2
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 650
    .restart local v1    # "accountName":Landroid/widget/TextView;
    :cond_3
    move-object/from16 v0, p3

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
