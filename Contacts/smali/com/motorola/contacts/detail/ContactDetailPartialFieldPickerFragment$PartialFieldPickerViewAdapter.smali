.class final Lcom/motorola/contacts/detail/ContactDetailPartialFieldPickerFragment$PartialFieldPickerViewAdapter;
.super Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;
.source "ContactDetailPartialFieldPickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/contacts/detail/ContactDetailPartialFieldPickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PartialFieldPickerViewAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/contacts/detail/ContactDetailPartialFieldPickerFragment;


# direct methods
.method private constructor <init>(Lcom/motorola/contacts/detail/ContactDetailPartialFieldPickerFragment;)V
    .locals 0

    .prologue
    .line 649
    iput-object p1, p0, Lcom/motorola/contacts/detail/ContactDetailPartialFieldPickerFragment$PartialFieldPickerViewAdapter;->this$0:Lcom/motorola/contacts/detail/ContactDetailPartialFieldPickerFragment;

    invoke-direct {p0, p1}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;-><init>(Lcom/android/contacts/detail/ContactDetailFragment;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/contacts/detail/ContactDetailPartialFieldPickerFragment;Lcom/motorola/contacts/detail/ContactDetailPartialFieldPickerFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/contacts/detail/ContactDetailPartialFieldPickerFragment;
    .param p2, "x1"    # Lcom/motorola/contacts/detail/ContactDetailPartialFieldPickerFragment$1;

    .prologue
    .line 649
    invoke-direct {p0, p1}, Lcom/motorola/contacts/detail/ContactDetailPartialFieldPickerFragment$PartialFieldPickerViewAdapter;-><init>(Lcom/motorola/contacts/detail/ContactDetailPartialFieldPickerFragment;)V

    return-void
.end method


# virtual methods
.method protected getDetailEntryView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v6, 0x0

    .line 695
    invoke-virtual {p0, p1}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->getItem(I)Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    .line 700
    .local v0, "entry":Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;
    if-eqz p2, :cond_0

    .line 701
    move-object v1, p2

    .line 702
    .local v1, "v":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;

    .line 712
    .local v2, "viewCache":Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;
    :goto_0
    invoke-virtual {p0, p1, v1, v0}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->bindDetailView(ILandroid/view/View;Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;)V

    .line 713
    return-object v1

    .line 705
    .end local v1    # "v":Landroid/view/View;
    .end local v2    # "viewCache":Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;
    :cond_0
    iget-object v3, p0, Lcom/motorola/contacts/detail/ContactDetailPartialFieldPickerFragment$PartialFieldPickerViewAdapter;->this$0:Lcom/motorola/contacts/detail/ContactDetailPartialFieldPickerFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v3}, Lcom/motorola/contacts/detail/ContactDetailPartialFieldPickerFragment;->access$1300(Lcom/motorola/contacts/detail/ContactDetailPartialFieldPickerFragment;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f040084

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 708
    .restart local v1    # "v":Landroid/view/View;
    new-instance v2, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;

    invoke-direct {v2, v1, v6, v6}, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;-><init>(Landroid/view/View;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    .line 709
    .restart local v2    # "viewCache":Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected getHeaderEntryView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const v8, 0x7f04003e

    const/4 v7, 0x0

    .line 652
    const v0, 0x7f04003e

    .line 653
    .local v0, "desiredLayoutResourceId":I
    const/4 v3, 0x0

    .line 654
    .local v3, "result":Landroid/view/View;
    const/4 v5, 0x0

    .line 659
    .local v5, "viewCache":Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewCache;
    if-eqz p1, :cond_0

    .line 660
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "viewCache":Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewCache;
    check-cast v5, Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewCache;

    .line 661
    .restart local v5    # "viewCache":Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewCache;
    iget v6, v5, Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewCache;->layoutResourceId:I

    if-ne v6, v8, :cond_0

    .line 662
    move-object v3, p1

    .line 667
    :cond_0
    if-nez v3, :cond_1

    .line 668
    iget-object v6, p0, Lcom/motorola/contacts/detail/ContactDetailPartialFieldPickerFragment$PartialFieldPickerViewAdapter;->this$0:Lcom/motorola/contacts/detail/ContactDetailPartialFieldPickerFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v6}, Lcom/motorola/contacts/detail/ContactDetailPartialFieldPickerFragment;->access$400(Lcom/motorola/contacts/detail/ContactDetailPartialFieldPickerFragment;)Landroid/view/LayoutInflater;

    move-result-object v6

    invoke-virtual {v6, v8, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 669
    new-instance v5, Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewCache;

    .end local v5    # "viewCache":Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewCache;
    invoke-direct {v5, v3, v8}, Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewCache;-><init>(Landroid/view/View;I)V

    .line 670
    .restart local v5    # "viewCache":Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewCache;
    invoke-virtual {v3, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 673
    :cond_1
    iget-object v6, p0, Lcom/motorola/contacts/detail/ContactDetailPartialFieldPickerFragment$PartialFieldPickerViewAdapter;->this$0:Lcom/motorola/contacts/detail/ContactDetailPartialFieldPickerFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/motorola/contacts/detail/ContactDetailPartialFieldPickerFragment;->access$500(Lcom/motorola/contacts/detail/ContactDetailPartialFieldPickerFragment;)Landroid/content/Context;

    move-result-object v6

    iget-object v8, p0, Lcom/motorola/contacts/detail/ContactDetailPartialFieldPickerFragment$PartialFieldPickerViewAdapter;->this$0:Lcom/motorola/contacts/detail/ContactDetailPartialFieldPickerFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;
    invoke-static {v8}, Lcom/motorola/contacts/detail/ContactDetailPartialFieldPickerFragment;->access$600(Lcom/motorola/contacts/detail/ContactDetailPartialFieldPickerFragment;)Lcom/android/contacts/ContactLoader$Result;

    move-result-object v8

    iget-object v9, v5, Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewCache;->displayNameView:Landroid/widget/TextView;

    invoke-static {v6, v8, v9}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->setDisplayName(Landroid/content/Context;Lcom/android/contacts/ContactLoader$Result;Landroid/widget/TextView;)V

    .line 675
    iget-object v6, p0, Lcom/motorola/contacts/detail/ContactDetailPartialFieldPickerFragment$PartialFieldPickerViewAdapter;->this$0:Lcom/motorola/contacts/detail/ContactDetailPartialFieldPickerFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/motorola/contacts/detail/ContactDetailPartialFieldPickerFragment;->access$700(Lcom/motorola/contacts/detail/ContactDetailPartialFieldPickerFragment;)Landroid/content/Context;

    move-result-object v6

    iget-object v8, p0, Lcom/motorola/contacts/detail/ContactDetailPartialFieldPickerFragment$PartialFieldPickerViewAdapter;->this$0:Lcom/motorola/contacts/detail/ContactDetailPartialFieldPickerFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;
    invoke-static {v8}, Lcom/motorola/contacts/detail/ContactDetailPartialFieldPickerFragment;->access$800(Lcom/motorola/contacts/detail/ContactDetailPartialFieldPickerFragment;)Lcom/android/contacts/ContactLoader$Result;

    move-result-object v8

    iget-object v9, v5, Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewCache;->companyView:Landroid/widget/TextView;

    invoke-static {v6, v8, v9}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->setCompanyName(Landroid/content/Context;Lcom/android/contacts/ContactLoader$Result;Landroid/widget/TextView;)V

    .line 678
    iget-object v6, v5, Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewCache;->photoView:Landroid/widget/ImageView;

    if-eqz v6, :cond_2

    .line 679
    iget-object v6, p0, Lcom/motorola/contacts/detail/ContactDetailPartialFieldPickerFragment$PartialFieldPickerViewAdapter;->this$0:Lcom/motorola/contacts/detail/ContactDetailPartialFieldPickerFragment;

    iget-object v6, v6, Lcom/motorola/contacts/detail/ContactDetailPartialFieldPickerFragment;->mPhotoSetter:Lcom/android/contacts/detail/ContactDetailPhotoSetter;

    iget-object v8, p0, Lcom/motorola/contacts/detail/ContactDetailPartialFieldPickerFragment$PartialFieldPickerViewAdapter;->this$0:Lcom/motorola/contacts/detail/ContactDetailPartialFieldPickerFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/motorola/contacts/detail/ContactDetailPartialFieldPickerFragment;->access$900(Lcom/motorola/contacts/detail/ContactDetailPartialFieldPickerFragment;)Landroid/content/Context;

    move-result-object v8

    iget-object v9, p0, Lcom/motorola/contacts/detail/ContactDetailPartialFieldPickerFragment$PartialFieldPickerViewAdapter;->this$0:Lcom/motorola/contacts/detail/ContactDetailPartialFieldPickerFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;
    invoke-static {v9}, Lcom/motorola/contacts/detail/ContactDetailPartialFieldPickerFragment;->access$1000(Lcom/motorola/contacts/detail/ContactDetailPartialFieldPickerFragment;)Lcom/android/contacts/ContactLoader$Result;

    move-result-object v9

    iget-object v10, v5, Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewCache;->photoView:Landroid/widget/ImageView;

    invoke-virtual {v6, v8, v9, v10, v7}, Lcom/android/contacts/detail/ContactDetailPhotoSetter;->setupContactPhotoForClick(Landroid/content/Context;Lcom/android/contacts/ContactLoader$Result;Landroid/widget/ImageView;Z)Landroid/view/View$OnClickListener;

    .line 682
    :cond_2
    iget-object v1, v5, Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewCache;->starredView:Landroid/widget/ImageView;

    .line 683
    .local v1, "favoritesStar":Landroid/widget/ImageView;
    if-eqz v1, :cond_3

    .line 684
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    .line 685
    .local v4, "tag":Ljava/lang/Object;
    if-nez v4, :cond_4

    move v2, v7

    .line 687
    .local v2, "isStarred":Z
    :goto_0
    iget-object v6, p0, Lcom/motorola/contacts/detail/ContactDetailPartialFieldPickerFragment$PartialFieldPickerViewAdapter;->this$0:Lcom/motorola/contacts/detail/ContactDetailPartialFieldPickerFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;
    invoke-static {v6}, Lcom/motorola/contacts/detail/ContactDetailPartialFieldPickerFragment;->access$1100(Lcom/motorola/contacts/detail/ContactDetailPartialFieldPickerFragment;)Lcom/android/contacts/ContactLoader$Result;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/contacts/ContactLoader$Result;->isDirectoryEntry()Z

    move-result v6

    iget-object v8, p0, Lcom/motorola/contacts/detail/ContactDetailPartialFieldPickerFragment$PartialFieldPickerViewAdapter;->this$0:Lcom/motorola/contacts/detail/ContactDetailPartialFieldPickerFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;
    invoke-static {v8}, Lcom/motorola/contacts/detail/ContactDetailPartialFieldPickerFragment;->access$1200(Lcom/motorola/contacts/detail/ContactDetailPartialFieldPickerFragment;)Lcom/android/contacts/ContactLoader$Result;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/contacts/ContactLoader$Result;->isUserProfile()Z

    move-result v8

    invoke-static {v1, v6, v8, v2}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->configureStarredImageView(Landroid/widget/ImageView;ZZZ)V

    .line 689
    invoke-virtual {v1, v7}, Landroid/view/View;->setClickable(Z)V

    .line 691
    .end local v2    # "isStarred":Z
    .end local v4    # "tag":Ljava/lang/Object;
    :cond_3
    return-object v3

    .line 685
    .restart local v4    # "tag":Ljava/lang/Object;
    :cond_4
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_0
.end method
