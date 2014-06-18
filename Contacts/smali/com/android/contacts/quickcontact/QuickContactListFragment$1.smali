.class Lcom/android/contacts/quickcontact/QuickContactListFragment$1;
.super Landroid/widget/BaseAdapter;
.source "QuickContactListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/quickcontact/QuickContactListFragment;->configureAdapter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/quickcontact/QuickContactListFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/quickcontact/QuickContactListFragment;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->this$0:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->this$0:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    # getter for: Lcom/android/contacts/quickcontact/QuickContactListFragment;->mActions:Ljava/util/List;
    invoke-static {v0}, Lcom/android/contacts/quickcontact/QuickContactListFragment;->access$000(Lcom/android/contacts/quickcontact/QuickContactListFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->this$0:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    # getter for: Lcom/android/contacts/quickcontact/QuickContactListFragment;->mActions:Ljava/util/List;
    invoke-static {v0}, Lcom/android/contacts/quickcontact/QuickContactListFragment;->access$000(Lcom/android/contacts/quickcontact/QuickContactListFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 94
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 18
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 100
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->this$0:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    # getter for: Lcom/android/contacts/quickcontact/QuickContactListFragment;->mActions:Ljava/util/List;
    invoke-static {v13}, Lcom/android/contacts/quickcontact/QuickContactListFragment;->access$000(Lcom/android/contacts/quickcontact/QuickContactListFragment;)Ljava/util/List;

    move-result-object v13

    move/from16 v0, p1

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/quickcontact/Action;

    .line 101
    .local v1, "action":Lcom/android/contacts/quickcontact/Action;
    invoke-interface {v1}, Lcom/android/contacts/quickcontact/Action;->getMimeType()Ljava/lang/String;

    move-result-object v6

    .line 103
    .local v6, "mimeType":Ljava/lang/String;
    if-eqz p2, :cond_2

    move-object/from16 v9, p2

    .line 111
    .local v9, "resultView":Landroid/view/View;
    :goto_0
    const v13, 0x1020014

    invoke-virtual {v9, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 113
    .local v11, "text1":Landroid/widget/TextView;
    const v13, 0x1020015

    invoke-virtual {v9, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 115
    .local v12, "text2":Landroid/widget/TextView;
    const v13, 0x7f060069

    invoke-virtual {v9, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 117
    .local v2, "actionsContainer":Landroid/view/View;
    const v13, 0x7f06006f

    invoke-virtual {v9, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 119
    .local v3, "alternateActionButton":Landroid/widget/ImageView;
    const v13, 0x7f06006e

    invoke-virtual {v9, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 120
    .local v4, "alternateActionDivider":Landroid/view/View;
    const v13, 0x7f06006b

    invoke-virtual {v9, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 123
    .local v8, "presenceIconView":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->this$0:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    iget-object v13, v13, Lcom/android/contacts/quickcontact/QuickContactListFragment;->mPrimaryActionClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v13}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 125
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->this$0:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    iget-object v13, v13, Lcom/android/contacts/quickcontact/QuickContactListFragment;->mSecondaryActionClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v13}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 128
    invoke-interface {v1}, Lcom/android/contacts/quickcontact/Action;->getAlternateIntent()Landroid/content/Intent;

    move-result-object v13

    if-eqz v13, :cond_4

    const/4 v5, 0x1

    .line 129
    .local v5, "hasAlternateAction":Z
    :goto_1
    if-eqz v5, :cond_5

    const/4 v13, 0x0

    :goto_2
    invoke-virtual {v4, v13}, Landroid/view/View;->setVisibility(I)V

    .line 130
    invoke-interface {v1}, Lcom/android/contacts/quickcontact/Action;->getAlternateIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-virtual {v3, v13}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 131
    invoke-interface {v1}, Lcom/android/contacts/quickcontact/Action;->getAlternateIconDescription()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v13}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 132
    if-eqz v5, :cond_6

    const/4 v13, 0x0

    :goto_3
    invoke-virtual {v3, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 135
    const-string v13, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 136
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->this$0:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    invoke-virtual {v13}, Lcom/android/contacts/quickcontact/QuickContactListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v13

    const v14, 0x7f0b01ee

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-interface {v1}, Lcom/android/contacts/quickcontact/Action;->getBody()Ljava/lang/CharSequence;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-virtual {v13, v14, v15}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 138
    if-eqz v5, :cond_0

    .line 139
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->this$0:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    invoke-virtual {v13}, Lcom/android/contacts/quickcontact/QuickContactListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v13

    const v14, 0x7f0b01ed

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-interface {v1}, Lcom/android/contacts/quickcontact/Action;->getBody()Ljava/lang/CharSequence;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-virtual {v13, v14, v15}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v13}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 144
    :cond_0
    invoke-interface {v1}, Lcom/android/contacts/quickcontact/Action;->getBody()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    if-eqz v12, :cond_1

    .line 146
    invoke-interface {v1}, Lcom/android/contacts/quickcontact/Action;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v10

    .line 147
    .local v10, "subtitle":Ljava/lang/CharSequence;
    invoke-virtual {v12, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 149
    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 154
    .end local v10    # "subtitle":Ljava/lang/CharSequence;
    :cond_1
    :goto_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->this$0:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    invoke-virtual {v13}, Lcom/android/contacts/quickcontact/QuickContactListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-interface {v1}, Lcom/android/contacts/quickcontact/Action;->getPresence()I

    move-result v14

    invoke-static {v13, v14}, Lcom/android/contacts/ContactPresenceIconUtil;->getPresenceIcon(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 156
    .local v7, "presenceIcon":Landroid/graphics/drawable/Drawable;
    if-eqz v7, :cond_8

    .line 157
    invoke-virtual {v8, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 158
    const/4 v13, 0x0

    invoke-virtual {v8, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 162
    :goto_5
    return-object v9

    .line 103
    .end local v2    # "actionsContainer":Landroid/view/View;
    .end local v3    # "alternateActionButton":Landroid/widget/ImageView;
    .end local v4    # "alternateActionDivider":Landroid/view/View;
    .end local v5    # "hasAlternateAction":Z
    .end local v7    # "presenceIcon":Landroid/graphics/drawable/Drawable;
    .end local v8    # "presenceIconView":Landroid/widget/ImageView;
    .end local v9    # "resultView":Landroid/view/View;
    .end local v11    # "text1":Landroid/widget/TextView;
    .end local v12    # "text2":Landroid/widget/TextView;
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;->this$0:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    invoke-virtual {v13}, Lcom/android/contacts/quickcontact/QuickContactListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v14

    const-string v13, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    const v13, 0x7f04007f

    :goto_6
    const/4 v15, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v14, v13, v0, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    goto/16 :goto_0

    :cond_3
    const v13, 0x7f04007e

    goto :goto_6

    .line 128
    .restart local v2    # "actionsContainer":Landroid/view/View;
    .restart local v3    # "alternateActionButton":Landroid/widget/ImageView;
    .restart local v4    # "alternateActionDivider":Landroid/view/View;
    .restart local v8    # "presenceIconView":Landroid/widget/ImageView;
    .restart local v9    # "resultView":Landroid/view/View;
    .restart local v11    # "text1":Landroid/widget/TextView;
    .restart local v12    # "text2":Landroid/widget/TextView;
    :cond_4
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 129
    .restart local v5    # "hasAlternateAction":Z
    :cond_5
    const/16 v13, 0x8

    goto/16 :goto_2

    .line 132
    :cond_6
    const/16 v13, 0x8

    goto/16 :goto_3

    .line 151
    .restart local v10    # "subtitle":Ljava/lang/CharSequence;
    :cond_7
    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    .line 160
    .end local v10    # "subtitle":Ljava/lang/CharSequence;
    .restart local v7    # "presenceIcon":Landroid/graphics/drawable/Drawable;
    :cond_8
    const/16 v13, 0x8

    invoke-virtual {v8, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_5
.end method
