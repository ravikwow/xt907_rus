.class Lcom/motorola/blur/privacy/PrivacyPolicyActivity$HeaderAdapter;
.super Landroid/widget/ArrayAdapter;
.source "PrivacyPolicyActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/privacy/PrivacyPolicyActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HeaderAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Landroid/preference/PreferenceActivity$Header;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/blur/privacy/PrivacyPolicyActivity;


# direct methods
.method public constructor <init>(Lcom/motorola/blur/privacy/PrivacyPolicyActivity;Landroid/app/Activity;Ljava/util/List;)V
    .locals 1
    .param p2, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 297
    .local p3, "objects":Ljava/util/List;, "Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    iput-object p1, p0, Lcom/motorola/blur/privacy/PrivacyPolicyActivity$HeaderAdapter;->this$0:Lcom/motorola/blur/privacy/PrivacyPolicyActivity;

    .line 298
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 299
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 17
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 303
    invoke-virtual/range {p0 .. p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/preference/PreferenceActivity$Header;

    .line 304
    .local v9, "header":Landroid/preference/PreferenceActivity$Header;
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/preference/PreferenceActivity$Header;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v13

    .line 305
    .local v13, "title":Ljava/lang/CharSequence;
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/preference/PreferenceActivity$Header;->getSummary(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v11

    .line 307
    .local v11, "summary":Ljava/lang/CharSequence;
    const/16 p2, 0x0

    move-object/from16 v16, p2

    .line 309
    .local v16, "view":Ljava/lang/Object;
    if-nez p1, :cond_1

    .line 310
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/blur/privacy/PrivacyPolicyActivity$HeaderAdapter;->this$0:Lcom/motorola/blur/privacy/PrivacyPolicyActivity;

    # getter for: Lcom/motorola/blur/privacy/PrivacyPolicyActivity;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v1}, Lcom/motorola/blur/privacy/PrivacyPolicyActivity;->access$500(Lcom/motorola/blur/privacy/PrivacyPolicyActivity;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030014

    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v16

    .line 311
    .local v16, "view":Landroid/view/View;
    const v1, 0x7f0c0046

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 314
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/blur/privacy/PrivacyPolicyActivity$HeaderAdapter;->this$0:Lcom/motorola/blur/privacy/PrivacyPolicyActivity;

    invoke-static {v1}, Lcom/motorola/blur/privacy/PrivacyPolicyActivity;->isTosAccepted(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 315
    const v1, 0x7f0c0049

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/CheckBox;

    .line 316
    .local v14, "tosCheckBox":Landroid/widget/CheckBox;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/blur/privacy/PrivacyPolicyActivity$HeaderAdapter;->this$0:Lcom/motorola/blur/privacy/PrivacyPolicyActivity;

    # getter for: Lcom/motorola/blur/privacy/PrivacyPolicyActivity;->mTosChecked:Z
    invoke-static {v1}, Lcom/motorola/blur/privacy/PrivacyPolicyActivity;->access$100(Lcom/motorola/blur/privacy/PrivacyPolicyActivity;)Z

    move-result v1

    invoke-virtual {v14, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 317
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/blur/privacy/PrivacyPolicyActivity$HeaderAdapter;->this$0:Lcom/motorola/blur/privacy/PrivacyPolicyActivity;

    # getter for: Lcom/motorola/blur/privacy/PrivacyPolicyActivity;->mOkButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/motorola/blur/privacy/PrivacyPolicyActivity;->access$200(Lcom/motorola/blur/privacy/PrivacyPolicyActivity;)Landroid/widget/Button;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/motorola/blur/privacy/PrivacyPolicyActivity$HeaderAdapter;->this$0:Lcom/motorola/blur/privacy/PrivacyPolicyActivity;

    # getter for: Lcom/motorola/blur/privacy/PrivacyPolicyActivity;->mTosChecked:Z
    invoke-static {v2}, Lcom/motorola/blur/privacy/PrivacyPolicyActivity;->access$100(Lcom/motorola/blur/privacy/PrivacyPolicyActivity;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 318
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/blur/privacy/PrivacyPolicyActivity$HeaderAdapter;->this$0:Lcom/motorola/blur/privacy/PrivacyPolicyActivity;

    # getter for: Lcom/motorola/blur/privacy/PrivacyPolicyActivity;->mListenerTosCheckBox:Landroid/widget/CompoundButton$OnCheckedChangeListener;
    invoke-static {v1}, Lcom/motorola/blur/privacy/PrivacyPolicyActivity;->access$600(Lcom/motorola/blur/privacy/PrivacyPolicyActivity;)Landroid/widget/CompoundButton$OnCheckedChangeListener;

    move-result-object v1

    invoke-virtual {v14, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 341
    .end local v14    # "tosCheckBox":Landroid/widget/CheckBox;
    :goto_0
    return-object v16

    .line 320
    :cond_0
    const v1, 0x7f0c0048

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 323
    .local v16, "view":Ljava/lang/Object;
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/blur/privacy/PrivacyPolicyActivity$HeaderAdapter;->this$0:Lcom/motorola/blur/privacy/PrivacyPolicyActivity;

    # getter for: Lcom/motorola/blur/privacy/PrivacyPolicyActivity;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v1}, Lcom/motorola/blur/privacy/PrivacyPolicyActivity;->access$500(Lcom/motorola/blur/privacy/PrivacyPolicyActivity;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030013

    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v16

    .line 324
    .local v16, "view":Landroid/view/View;
    const v1, 0x7f0c0046

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 327
    const v1, 0x7f0c0047

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 328
    .local v15, "tvsummary":Landroid/widget/TextView;
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0800da

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 329
    .local v7, "details":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    .line 330
    .local v8, "details_len":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-nez v11, :cond_2

    const-string v1, ""

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 331
    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    move-result v12

    .line 333
    .local v12, "summary_len":I
    new-instance v10, Landroid/text/SpannableString;

    invoke-direct {v10, v11}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 334
    .local v10, "str":Landroid/text/SpannableString;
    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v15}, Landroid/widget/TextView;->getLinkTextColors()Landroid/content/res/ColorStateList;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Landroid/text/style/TextAppearanceSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    sub-int v2, v12, v8

    const/16 v3, 0x21

    invoke-virtual {v10, v1, v2, v12, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 336
    new-instance v1, Landroid/text/style/UnderlineSpan;

    invoke-direct {v1}, Landroid/text/style/UnderlineSpan;-><init>()V

    sub-int v2, v12, v8

    const/4 v3, 0x0

    invoke-virtual {v10, v1, v2, v12, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 338
    sget-object v1, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v15, v10, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    goto/16 :goto_0

    .line 330
    .end local v10    # "str":Landroid/text/SpannableString;
    .end local v12    # "summary_len":I
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 346
    if-lez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
