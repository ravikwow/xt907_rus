.class final Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "ContactDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/detail/ContactDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ViewAdapter"
.end annotation


# instance fields
.field private final mPrimaryActionClickListener:Landroid/view/View$OnClickListener;

.field private final mSecondaryActionClickListener:Landroid/view/View$OnClickListener;

.field final synthetic this$0:Lcom/android/contacts/detail/ContactDetailFragment;


# direct methods
.method private constructor <init>(Lcom/android/contacts/detail/ContactDetailFragment;)V
    .locals 1

    .prologue
    .line 1506
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 1810
    new-instance v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$2;

    invoke-direct {v0, p0}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$2;-><init>(Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;)V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->mPrimaryActionClickListener:Landroid/view/View$OnClickListener;

    .line 1820
    new-instance v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$3;

    invoke-direct {v0, p0}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$3;-><init>(Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;)V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->mSecondaryActionClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/detail/ContactDetailFragment;Lcom/android/contacts/detail/ContactDetailFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/contacts/detail/ContactDetailFragment;
    .param p2, "x1"    # Lcom/android/contacts/detail/ContactDetailFragment$1;

    .prologue
    .line 1506
    invoke-direct {p0, p1}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;-><init>(Lcom/android/contacts/detail/ContactDetailFragment;)V

    return-void
.end method

.method private bindDetailView(ILandroid/view/View;Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;)V
    .locals 15
    .param p1, "position"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "entry"    # Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    .prologue
    .line 1711
    iget-object v11, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/android/contacts/detail/ContactDetailFragment;->access$1200(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 1712
    .local v5, "resources":Landroid/content/res/Resources;
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;

    .line 1714
    .local v10, "views":Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;
    move-object/from16 v0, p3

    iget-object v11, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->typeString:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 1716
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v11

    const-string v12, "el"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 1717
    iget-object v11, v10, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->type:Landroid/widget/TextView;

    move-object/from16 v0, p3

    iget-object v12, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->typeString:Ljava/lang/String;

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1722
    :goto_0
    iget-object v11, v10, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->type:Landroid/widget/TextView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1727
    :goto_1
    iget-object v11, v10, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->data:Landroid/widget/TextView;

    move-object/from16 v0, p3

    iget-object v12, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1728
    iget-object v11, v10, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->data:Landroid/widget/TextView;

    move-object/from16 v0, p3

    iget v12, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->maxLines:I

    invoke-direct {p0, v11, v12}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->setMaxLines(Landroid/widget/TextView;I)V

    .line 1731
    iget-object v12, v10, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->primaryIndicator:Landroid/view/View;

    move-object/from16 v0, p3

    iget-boolean v11, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->isPrimary:Z

    if-eqz v11, :cond_3

    const/4 v11, 0x0

    :goto_2
    invoke-virtual {v12, v11}, Landroid/view/View;->setVisibility(I)V

    .line 1734
    iget-object v11, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/android/contacts/detail/ContactDetailFragment;->access$1200(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/content/Context;

    move-result-object v11

    move-object/from16 v0, p3

    iget v12, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->presence:I

    invoke-static {v11, v12}, Lcom/android/contacts/ContactPresenceIconUtil;->getPresenceIcon(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1736
    .local v2, "presenceIcon":Landroid/graphics/drawable/Drawable;
    iget-object v3, v10, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->presenceIcon:Landroid/widget/ImageView;

    .line 1737
    .local v3, "presenceIconView":Landroid/widget/ImageView;
    if-eqz v2, :cond_4

    .line 1738
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1739
    const/4 v11, 0x0

    invoke-virtual {v3, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1744
    :goto_3
    iget-object v1, v10, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->actionsViewContainer:Landroid/view/View;

    check-cast v1, Lcom/android/contacts/detail/ActionsViewContainer;

    .line 1746
    .local v1, "actionsButtonContainer":Lcom/android/contacts/detail/ActionsViewContainer;
    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Lcom/android/contacts/detail/ActionsViewContainer;->setTag(Ljava/lang/Object;)V

    .line 1747
    move/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/android/contacts/detail/ActionsViewContainer;->setPosition(I)V

    .line 1748
    iget-object v11, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-virtual {v11, v1}, Lcom/android/contacts/detail/ContactDetailFragment;->registerForContextMenu(Landroid/view/View;)V

    .line 1751
    iget-object v8, v10, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->secondaryActionButton:Landroid/widget/ImageView;

    .line 1752
    .local v8, "secondaryActionView":Landroid/widget/ImageView;
    const/4 v7, 0x0

    .line 1753
    .local v7, "secondaryActionIcon":Landroid/graphics/drawable/Drawable;
    const/4 v6, 0x0

    .line 1754
    .local v6, "secondaryActionDescription":Ljava/lang/String;
    move-object/from16 v0, p3

    iget v11, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->secondaryActionIcon:I

    const/4 v12, -0x1

    if-eq v11, v12, :cond_5

    .line 1755
    move-object/from16 v0, p3

    iget v11, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->secondaryActionIcon:I

    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 1756
    move-object/from16 v0, p3

    iget v11, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->secondaryActionDescription:I

    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1767
    :cond_0
    :goto_4
    iget-object v9, v10, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->secondaryActionViewContainer:Landroid/view/View;

    .line 1768
    .local v9, "secondaryActionViewContainer":Landroid/view/View;
    move-object/from16 v0, p3

    iget-object v11, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->secondaryIntent:Landroid/content/Intent;

    if-eqz v11, :cond_7

    if-eqz v7, :cond_7

    .line 1769
    invoke-virtual {v8, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1770
    invoke-virtual {v8, v6}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1771
    move-object/from16 v0, p3

    invoke-virtual {v9, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1772
    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Landroid/view/View;->setVisibility(I)V

    .line 1773
    iget-object v11, v10, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->secondaryActionDivider:Landroid/view/View;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    .line 1780
    :goto_5
    invoke-virtual/range {p3 .. p3}, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->isInSubSection()Z

    move-result v11

    if-eqz v11, :cond_8

    iget-object v11, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mViewEntryDimensions:Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;
    invoke-static {v11}, Lcom/android/contacts/detail/ContactDetailFragment;->access$1400(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;->getWidePaddingLeft()I

    move-result v11

    :goto_6
    const/4 v12, 0x0

    iget-object v13, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mViewEntryDimensions:Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;
    invoke-static {v13}, Lcom/android/contacts/detail/ContactDetailFragment;->access$1400(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;->getPaddingRight()I

    move-result v13

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v12, v13, v14}, Landroid/view/View;->setPadding(IIII)V

    .line 1786
    iget-object v4, v10, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->primaryActionView:Landroid/view/View;

    .line 1787
    .local v4, "primaryActionView":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getPaddingLeft()I

    move-result v11

    iget-object v12, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mViewEntryDimensions:Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;
    invoke-static {v12}, Lcom/android/contacts/detail/ContactDetailFragment;->access$1400(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;->getPaddingTop()I

    move-result v12

    invoke-virtual {v4}, Landroid/view/View;->getPaddingRight()I

    move-result v13

    iget-object v14, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mViewEntryDimensions:Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;
    invoke-static {v14}, Lcom/android/contacts/detail/ContactDetailFragment;->access$1400(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;->getPaddingBottom()I

    move-result v14

    invoke-virtual {v4, v11, v12, v13, v14}, Landroid/view/View;->setPadding(IIII)V

    .line 1792
    invoke-virtual {v9}, Landroid/view/View;->getPaddingLeft()I

    move-result v11

    iget-object v12, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mViewEntryDimensions:Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;
    invoke-static {v12}, Lcom/android/contacts/detail/ContactDetailFragment;->access$1400(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;->getPaddingTop()I

    move-result v12

    invoke-virtual {v9}, Landroid/view/View;->getPaddingRight()I

    move-result v13

    iget-object v14, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mViewEntryDimensions:Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;
    invoke-static {v14}, Lcom/android/contacts/detail/ContactDetailFragment;->access$1400(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;->getPaddingBottom()I

    move-result v14

    invoke-virtual {v9, v11, v12, v13, v14}, Landroid/view/View;->setPadding(IIII)V

    .line 1797
    return-void

    .line 1719
    .end local v1    # "actionsButtonContainer":Lcom/android/contacts/detail/ActionsViewContainer;
    .end local v2    # "presenceIcon":Landroid/graphics/drawable/Drawable;
    .end local v3    # "presenceIconView":Landroid/widget/ImageView;
    .end local v4    # "primaryActionView":Landroid/view/View;
    .end local v6    # "secondaryActionDescription":Ljava/lang/String;
    .end local v7    # "secondaryActionIcon":Landroid/graphics/drawable/Drawable;
    .end local v8    # "secondaryActionView":Landroid/widget/ImageView;
    .end local v9    # "secondaryActionViewContainer":Landroid/view/View;
    :cond_1
    iget-object v11, v10, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->type:Landroid/widget/TextView;

    move-object/from16 v0, p3

    iget-object v12, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->typeString:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1724
    :cond_2
    iget-object v11, v10, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->type:Landroid/widget/TextView;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 1731
    :cond_3
    const/16 v11, 0x8

    goto/16 :goto_2

    .line 1741
    .restart local v2    # "presenceIcon":Landroid/graphics/drawable/Drawable;
    .restart local v3    # "presenceIconView":Landroid/widget/ImageView;
    :cond_4
    const/16 v11, 0x8

    invoke-virtual {v3, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_3

    .line 1757
    .restart local v1    # "actionsButtonContainer":Lcom/android/contacts/detail/ActionsViewContainer;
    .restart local v6    # "secondaryActionDescription":Ljava/lang/String;
    .restart local v7    # "secondaryActionIcon":Landroid/graphics/drawable/Drawable;
    .restart local v8    # "secondaryActionView":Landroid/widget/ImageView;
    :cond_5
    move-object/from16 v0, p3

    iget v11, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->chatCapability:I

    and-int/lit8 v11, v11, 0x4

    if-eqz v11, :cond_6

    .line 1758
    const v11, 0x7f020082

    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 1760
    const v11, 0x7f0b0155

    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_4

    .line 1761
    :cond_6
    move-object/from16 v0, p3

    iget v11, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->chatCapability:I

    and-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_0

    .line 1762
    const v11, 0x7f020081

    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 1764
    const v11, 0x7f0b0154

    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_4

    .line 1775
    .restart local v9    # "secondaryActionViewContainer":Landroid/view/View;
    :cond_7
    const/16 v11, 0x8

    invoke-virtual {v9, v11}, Landroid/view/View;->setVisibility(I)V

    .line 1776
    iget-object v11, v10, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->secondaryActionDivider:Landroid/view/View;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_5

    .line 1780
    :cond_8
    iget-object v11, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mViewEntryDimensions:Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;
    invoke-static {v11}, Lcom/android/contacts/detail/ContactDetailFragment;->access$1400(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;->getPaddingLeft()I

    move-result v11

    goto/16 :goto_6
.end method

.method private getAddConnectionEntryView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 1667
    invoke-virtual {p0, p1}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->getItem(I)Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/detail/ContactDetailFragment$AddConnectionViewEntry;

    .line 1671
    .local v0, "entry":Lcom/android/contacts/detail/ContactDetailFragment$AddConnectionViewEntry;
    if-eqz p2, :cond_0

    .line 1672
    move-object v1, p2

    .line 1673
    .local v1, "result":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/detail/ContactDetailFragment$AddConnectionViewCache;

    .line 1680
    .local v2, "viewCache":Lcom/android/contacts/detail/ContactDetailFragment$AddConnectionViewCache;
    :goto_0
    iget-object v3, v2, Lcom/android/contacts/detail/ContactDetailFragment$AddConnectionViewCache;->name:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/android/contacts/detail/ContactDetailFragment$AddConnectionViewEntry;->getLabel()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1681
    iget-object v3, v2, Lcom/android/contacts/detail/ContactDetailFragment$AddConnectionViewCache;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/android/contacts/detail/ContactDetailFragment$AddConnectionViewEntry;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1682
    iget-object v3, v2, Lcom/android/contacts/detail/ContactDetailFragment$AddConnectionViewCache;->primaryActionView:Landroid/view/View;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment$AddConnectionViewEntry;->mOnClickListener:Landroid/view/View$OnClickListener;
    invoke-static {v0}, Lcom/android/contacts/detail/ContactDetailFragment$AddConnectionViewEntry;->access$1500(Lcom/android/contacts/detail/ContactDetailFragment$AddConnectionViewEntry;)Landroid/view/View$OnClickListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1684
    return-object v1

    .line 1675
    .end local v1    # "result":Landroid/view/View;
    .end local v2    # "viewCache":Lcom/android/contacts/detail/ContactDetailFragment$AddConnectionViewCache;
    :cond_0
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v3}, Lcom/android/contacts/detail/ContactDetailFragment;->access$1100(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f040011

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 1677
    .restart local v1    # "result":Landroid/view/View;
    new-instance v2, Lcom/android/contacts/detail/ContactDetailFragment$AddConnectionViewCache;

    invoke-direct {v2, v1}, Lcom/android/contacts/detail/ContactDetailFragment$AddConnectionViewCache;-><init>(Landroid/view/View;)V

    .line 1678
    .restart local v2    # "viewCache":Lcom/android/contacts/detail/ContactDetailFragment$AddConnectionViewCache;
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private getDetailEntryView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 1688
    invoke-virtual {p0, p1}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->getItem(I)Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    .line 1693
    .local v0, "entry":Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;
    if-eqz p2, :cond_0

    .line 1694
    move-object v1, p2

    .line 1695
    .local v1, "v":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;

    .line 1706
    .local v2, "viewCache":Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;
    :goto_0
    invoke-direct {p0, p1, v1, v0}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->bindDetailView(ILandroid/view/View;Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;)V

    .line 1707
    return-object v1

    .line 1698
    .end local v1    # "v":Landroid/view/View;
    .end local v2    # "viewCache":Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;
    :cond_0
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v3}, Lcom/android/contacts/detail/ContactDetailFragment;->access$1100(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f040016

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 1701
    .restart local v1    # "v":Landroid/view/View;
    new-instance v2, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;

    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->mPrimaryActionClickListener:Landroid/view/View$OnClickListener;

    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->mSecondaryActionClickListener:Landroid/view/View$OnClickListener;

    invoke-direct {v2, v1, v3, v4}, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;-><init>(Landroid/view/View;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    .line 1703
    .restart local v2    # "viewCache":Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private getHeaderEntryView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v1, 0x0

    .line 1538
    iget-object v7, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContactHasSocialUpdates:Z
    invoke-static {v7}, Lcom/android/contacts/detail/ContactDetailFragment;->access$1000(Lcom/android/contacts/detail/ContactDetailFragment;)Z

    move-result v7

    if-eqz v7, :cond_6

    const v0, 0x7f040038

    .line 1541
    .local v0, "desiredLayoutResourceId":I
    :goto_0
    const/4 v5, 0x0

    .line 1542
    .local v5, "result":Landroid/view/View;
    const/4 v6, 0x0

    .line 1547
    .local v6, "viewCache":Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewCache;
    if-eqz p1, :cond_0

    .line 1548
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "viewCache":Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewCache;
    check-cast v6, Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewCache;

    .line 1549
    .restart local v6    # "viewCache":Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewCache;
    iget v7, v6, Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewCache;->layoutResourceId:I

    if-ne v7, v0, :cond_0

    .line 1550
    move-object v5, p1

    .line 1555
    :cond_0
    if-nez v5, :cond_1

    .line 1556
    iget-object v7, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v7}, Lcom/android/contacts/detail/ContactDetailFragment;->access$1100(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/view/LayoutInflater;

    move-result-object v7

    invoke-virtual {v7, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 1557
    new-instance v6, Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewCache;

    .end local v6    # "viewCache":Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewCache;
    invoke-direct {v6, v5, v0}, Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewCache;-><init>(Landroid/view/View;I)V

    .line 1558
    .restart local v6    # "viewCache":Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewCache;
    invoke-virtual {v5, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1561
    :cond_1
    iget-object v7, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/contacts/detail/ContactDetailFragment;->access$1200(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;
    invoke-static {v8}, Lcom/android/contacts/detail/ContactDetailFragment;->access$600(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/model/Contact;

    move-result-object v8

    iget-object v9, v6, Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewCache;->displayNameView:Landroid/widget/TextView;

    invoke-static {v7, v8, v9}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->setDisplayName(Landroid/content/Context;Lcom/android/contacts/model/Contact;Landroid/widget/TextView;)V

    .line 1563
    iget-object v7, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/contacts/detail/ContactDetailFragment;->access$1200(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;
    invoke-static {v8}, Lcom/android/contacts/detail/ContactDetailFragment;->access$600(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/model/Contact;

    move-result-object v8

    iget-object v9, v6, Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewCache;->companyView:Landroid/widget/TextView;

    invoke-static {v7, v8, v9}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->setCompanyName(Landroid/content/Context;Lcom/android/contacts/model/Contact;Landroid/widget/TextView;)V

    .line 1566
    iget-object v7, v6, Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewCache;->photoView:Landroid/widget/ImageView;

    if-eqz v7, :cond_4

    .line 1567
    iget-object v7, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;
    invoke-static {v7}, Lcom/android/contacts/detail/ContactDetailFragment;->access$600(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/model/Contact;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/contacts/model/Contact;->getPhotoUri()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    const/4 v1, 0x1

    .line 1568
    .local v1, "expandOnClick":Z
    :cond_2
    iget-object v7, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mPhotoSetter:Lcom/android/contacts/detail/ContactDetailPhotoSetter;
    invoke-static {v7}, Lcom/android/contacts/detail/ContactDetailFragment;->access$1300(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/detail/ContactDetailPhotoSetter;

    move-result-object v7

    iget-object v8, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/contacts/detail/ContactDetailFragment;->access$1200(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/content/Context;

    move-result-object v8

    iget-object v9, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;
    invoke-static {v9}, Lcom/android/contacts/detail/ContactDetailFragment;->access$600(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/model/Contact;

    move-result-object v9

    iget-object v10, v6, Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewCache;->photoView:Landroid/widget/ImageView;

    invoke-virtual {v7, v8, v9, v10, v1}, Lcom/android/contacts/detail/ContactDetailPhotoSetter;->setupContactPhotoForClick(Landroid/content/Context;Lcom/android/contacts/model/Contact;Landroid/widget/ImageView;Z)Landroid/view/View$OnClickListener;

    move-result-object v3

    .line 1571
    .local v3, "listener":Landroid/view/View$OnClickListener;
    if-nez v1, :cond_3

    iget-object v7, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;
    invoke-static {v7}, Lcom/android/contacts/detail/ContactDetailFragment;->access$600(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/model/Contact;

    move-result-object v7

    iget-object v8, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/contacts/detail/ContactDetailFragment;->access$1200(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/contacts/model/Contact;->isWritableContact(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1572
    :cond_3
    invoke-virtual {v6, v3}, Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewCache;->enablePhotoOverlay(Landroid/view/View$OnClickListener;)V

    .line 1577
    .end local v1    # "expandOnClick":Z
    .end local v3    # "listener":Landroid/view/View$OnClickListener;
    :cond_4
    iget-object v2, v6, Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewCache;->starredView:Landroid/widget/ImageView;

    .line 1578
    .local v2, "favoritesStar":Landroid/widget/ImageView;
    if-eqz v2, :cond_5

    .line 1579
    iget-object v7, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;
    invoke-static {v7}, Lcom/android/contacts/detail/ContactDetailFragment;->access$600(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/model/Contact;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/contacts/model/Contact;->isDirectoryEntry()Z

    move-result v7

    iget-object v8, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;
    invoke-static {v8}, Lcom/android/contacts/detail/ContactDetailFragment;->access$600(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/model/Contact;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/contacts/model/Contact;->isUserProfile()Z

    move-result v8

    iget-object v9, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;
    invoke-static {v9}, Lcom/android/contacts/detail/ContactDetailFragment;->access$600(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/model/Contact;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/contacts/model/Contact;->getStarred()Z

    move-result v9

    invoke-static {v2, v7, v8, v9}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->configureStarredImageView(Landroid/widget/ImageView;ZZZ)V

    .line 1582
    iget-object v7, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;
    invoke-static {v7}, Lcom/android/contacts/detail/ContactDetailFragment;->access$600(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/model/Contact;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/contacts/model/Contact;->getLookupUri()Landroid/net/Uri;

    move-result-object v4

    .line 1583
    .local v4, "lookupUri":Landroid/net/Uri;
    new-instance v7, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$1;

    invoke-direct {v7, p0, v4, v2}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter$1;-><init>(Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;Landroid/net/Uri;Landroid/widget/ImageView;)V

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1611
    .end local v4    # "lookupUri":Landroid/net/Uri;
    :cond_5
    return-object v5

    .line 1538
    .end local v0    # "desiredLayoutResourceId":I
    .end local v2    # "favoritesStar":Landroid/widget/ImageView;
    .end local v5    # "result":Landroid/view/View;
    .end local v6    # "viewCache":Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewCache;
    :cond_6
    const v0, 0x7f040039

    goto/16 :goto_0
.end method

.method private getKindTitleEntryView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 1627
    invoke-virtual {p0, p1}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->getItem(I)Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/detail/ContactDetailFragment$KindTitleViewEntry;

    .line 1631
    .local v0, "entry":Lcom/android/contacts/detail/ContactDetailFragment$KindTitleViewEntry;
    if-eqz p2, :cond_0

    .line 1632
    move-object v1, p2

    .line 1633
    .local v1, "result":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/detail/ContactDetailFragment$KindTitleViewCache;

    .line 1640
    .local v2, "viewCache":Lcom/android/contacts/detail/ContactDetailFragment$KindTitleViewCache;
    :goto_0
    iget-object v3, v2, Lcom/android/contacts/detail/ContactDetailFragment$KindTitleViewCache;->titleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/android/contacts/detail/ContactDetailFragment$KindTitleViewEntry;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1642
    return-object v1

    .line 1635
    .end local v1    # "result":Landroid/view/View;
    .end local v2    # "viewCache":Lcom/android/contacts/detail/ContactDetailFragment$KindTitleViewCache;
    :cond_0
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v3}, Lcom/android/contacts/detail/ContactDetailFragment;->access$1100(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f04006e

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 1636
    .restart local v1    # "result":Landroid/view/View;
    new-instance v2, Lcom/android/contacts/detail/ContactDetailFragment$KindTitleViewCache;

    invoke-direct {v2, v1}, Lcom/android/contacts/detail/ContactDetailFragment$KindTitleViewCache;-><init>(Landroid/view/View;)V

    .line 1637
    .restart local v2    # "viewCache":Lcom/android/contacts/detail/ContactDetailFragment$KindTitleViewCache;
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private getNetworkTitleEntryView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 1646
    invoke-virtual {p0, p1}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->getItem(I)Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/detail/ContactDetailFragment$NetworkTitleViewEntry;

    .line 1650
    .local v0, "entry":Lcom/android/contacts/detail/ContactDetailFragment$NetworkTitleViewEntry;
    if-eqz p2, :cond_0

    .line 1651
    move-object v1, p2

    .line 1652
    .local v1, "result":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/detail/ContactDetailFragment$NetworkTitleViewCache;

    .line 1660
    .local v2, "viewCache":Lcom/android/contacts/detail/ContactDetailFragment$NetworkTitleViewCache;
    :goto_0
    iget-object v3, v2, Lcom/android/contacts/detail/ContactDetailFragment$NetworkTitleViewCache;->name:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/android/contacts/detail/ContactDetailFragment$NetworkTitleViewEntry;->getLabel()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1661
    iget-object v3, v2, Lcom/android/contacts/detail/ContactDetailFragment$NetworkTitleViewCache;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/android/contacts/detail/ContactDetailFragment$NetworkTitleViewEntry;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1663
    return-object v1

    .line 1654
    .end local v1    # "result":Landroid/view/View;
    .end local v2    # "viewCache":Lcom/android/contacts/detail/ContactDetailFragment$NetworkTitleViewCache;
    :cond_0
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v3}, Lcom/android/contacts/detail/ContactDetailFragment;->access$1100(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f040019

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 1656
    .restart local v1    # "result":Landroid/view/View;
    new-instance v2, Lcom/android/contacts/detail/ContactDetailFragment$NetworkTitleViewCache;

    invoke-direct {v2, v1}, Lcom/android/contacts/detail/ContactDetailFragment$NetworkTitleViewCache;-><init>(Landroid/view/View;)V

    .line 1657
    .restart local v2    # "viewCache":Lcom/android/contacts/detail/ContactDetailFragment$NetworkTitleViewCache;
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private getSeparatorEntryView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x0

    .line 1615
    invoke-virtual {p0, p1}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->getItem(I)Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/detail/ContactDetailFragment$SeparatorViewEntry;

    .line 1616
    .local v0, "entry":Lcom/android/contacts/detail/ContactDetailFragment$SeparatorViewEntry;
    if-eqz p2, :cond_0

    move-object v1, p2

    .line 1619
    .local v1, "result":Landroid/view/View;
    :goto_0
    invoke-virtual {v0}, Lcom/android/contacts/detail/ContactDetailFragment$SeparatorViewEntry;->isInSubSection()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mViewEntryDimensions:Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;
    invoke-static {v2}, Lcom/android/contacts/detail/ContactDetailFragment;->access$1400(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;->getWidePaddingLeft()I

    move-result v2

    :goto_1
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mViewEntryDimensions:Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;
    invoke-static {v3}, Lcom/android/contacts/detail/ContactDetailFragment;->access$1400(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;->getPaddingRight()I

    move-result v3

    invoke-virtual {v1, v2, v4, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 1623
    return-object v1

    .line 1616
    .end local v1    # "result":Landroid/view/View;
    :cond_0
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v2}, Lcom/android/contacts/detail/ContactDetailFragment;->access$1100(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f04001a

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 1619
    .restart local v1    # "result":Landroid/view/View;
    :cond_1
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mViewEntryDimensions:Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;
    invoke-static {v2}, Lcom/android/contacts/detail/ContactDetailFragment;->access$1400(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;->getPaddingLeft()I

    move-result v2

    goto :goto_1
.end method

.method private setMaxLines(Landroid/widget/TextView;I)V
    .locals 1
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "maxLines"    # I

    .prologue
    const/4 v0, 0x1

    .line 1800
    if-ne p2, v0, :cond_0

    .line 1801
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1802
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1808
    :goto_0
    return-void

    .line 1804
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1805
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 1806
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_0
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 1866
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 1836
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/contacts/detail/ContactDetailFragment;->access$1600(Lcom/android/contacts/detail/ContactDetailFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1841
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/contacts/detail/ContactDetailFragment;->access$1600(Lcom/android/contacts/detail/ContactDetailFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 1506
    invoke-virtual {p0, p1}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->getItem(I)Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 1856
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/contacts/detail/ContactDetailFragment;->access$1600(Lcom/android/contacts/detail/ContactDetailFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;

    .line 1857
    .local v0, "entry":Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;
    if-eqz v0, :cond_0

    .line 1858
    invoke-virtual {v0}, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->getId()J

    move-result-wide v1

    .line 1860
    :goto_0
    return-wide v1

    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1846
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/contacts/detail/ContactDetailFragment;->access$1600(Lcom/android/contacts/detail/ContactDetailFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;

    invoke-virtual {v0}, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->getViewType()I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 1518
    invoke-virtual {p0, p1}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->getItemViewType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1532
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid view type ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->getItemViewType(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1520
    :pswitch_0
    invoke-direct {p0, p2, p3}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->getHeaderEntryView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1530
    :goto_0
    return-object v0

    .line 1522
    :pswitch_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->getSeparatorEntryView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 1524
    :pswitch_2
    invoke-direct {p0, p1, p2, p3}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->getKindTitleEntryView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 1526
    :pswitch_3
    invoke-direct {p0, p1, p2, p3}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->getDetailEntryView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 1528
    :pswitch_4
    invoke-direct {p0, p1, p2, p3}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->getNetworkTitleEntryView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 1530
    :pswitch_5
    invoke-direct {p0, p1, p2, p3}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->getAddConnectionEntryView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 1518
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_1
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 1851
    const/4 v0, 0x6

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1871
    invoke-virtual {p0, p1}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->getItem(I)Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->isEnabled()Z

    move-result v0

    return v0
.end method
