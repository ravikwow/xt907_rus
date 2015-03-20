.class final Lcom/motorola/contacts/detail/ContactDetailVCardPreviewFragment$VcardPreviewAdapter;
.super Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;
.source "ContactDetailVCardPreviewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/contacts/detail/ContactDetailVCardPreviewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "VcardPreviewAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/contacts/detail/ContactDetailVCardPreviewFragment;


# direct methods
.method private constructor <init>(Lcom/motorola/contacts/detail/ContactDetailVCardPreviewFragment;)V
    .locals 0

    .prologue
    .line 860
    iput-object p1, p0, Lcom/motorola/contacts/detail/ContactDetailVCardPreviewFragment$VcardPreviewAdapter;->this$0:Lcom/motorola/contacts/detail/ContactDetailVCardPreviewFragment;

    invoke-direct {p0, p1}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;-><init>(Lcom/android/contacts/detail/ContactDetailFragment;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/contacts/detail/ContactDetailVCardPreviewFragment;Lcom/motorola/contacts/detail/ContactDetailVCardPreviewFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/contacts/detail/ContactDetailVCardPreviewFragment;
    .param p2, "x1"    # Lcom/motorola/contacts/detail/ContactDetailVCardPreviewFragment$1;

    .prologue
    .line 860
    invoke-direct {p0, p1}, Lcom/motorola/contacts/detail/ContactDetailVCardPreviewFragment$VcardPreviewAdapter;-><init>(Lcom/motorola/contacts/detail/ContactDetailVCardPreviewFragment;)V

    return-void
.end method


# virtual methods
.method protected getHeaderEntryView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const v5, 0x7f04003e

    .line 863
    const v0, 0x7f04003e

    .line 864
    .local v0, "desiredLayoutResourceId":I
    const/4 v1, 0x0

    .line 865
    .local v1, "result":Landroid/view/View;
    const/4 v2, 0x0

    .line 870
    .local v2, "viewCache":Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewCache;
    if-eqz p1, :cond_0

    .line 871
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "viewCache":Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewCache;
    check-cast v2, Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewCache;

    .line 872
    .restart local v2    # "viewCache":Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewCache;
    iget v3, v2, Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewCache;->layoutResourceId:I

    if-ne v3, v5, :cond_0

    .line 873
    move-object v1, p1

    .line 878
    :cond_0
    if-nez v1, :cond_1

    .line 879
    iget-object v3, p0, Lcom/motorola/contacts/detail/ContactDetailVCardPreviewFragment$VcardPreviewAdapter;->this$0:Lcom/motorola/contacts/detail/ContactDetailVCardPreviewFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v3}, Lcom/motorola/contacts/detail/ContactDetailVCardPreviewFragment;->access$400(Lcom/motorola/contacts/detail/ContactDetailVCardPreviewFragment;)Landroid/view/LayoutInflater;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v5, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 880
    new-instance v2, Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewCache;

    .end local v2    # "viewCache":Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewCache;
    invoke-direct {v2, v1, v5}, Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewCache;-><init>(Landroid/view/View;I)V

    .line 881
    .restart local v2    # "viewCache":Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewCache;
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 884
    :cond_1
    iget-object v3, p0, Lcom/motorola/contacts/detail/ContactDetailVCardPreviewFragment$VcardPreviewAdapter;->this$0:Lcom/motorola/contacts/detail/ContactDetailVCardPreviewFragment;

    iget-object v4, v2, Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewCache;->displayNameView:Landroid/widget/TextView;

    # invokes: Lcom/motorola/contacts/detail/ContactDetailVCardPreviewFragment;->setDisplayName(Landroid/widget/TextView;)V
    invoke-static {v3, v4}, Lcom/motorola/contacts/detail/ContactDetailVCardPreviewFragment;->access$500(Lcom/motorola/contacts/detail/ContactDetailVCardPreviewFragment;Landroid/widget/TextView;)V

    .line 885
    iget-object v3, p0, Lcom/motorola/contacts/detail/ContactDetailVCardPreviewFragment$VcardPreviewAdapter;->this$0:Lcom/motorola/contacts/detail/ContactDetailVCardPreviewFragment;

    iget-object v4, v2, Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewCache;->companyView:Landroid/widget/TextView;

    # invokes: Lcom/motorola/contacts/detail/ContactDetailVCardPreviewFragment;->setCompanyName(Landroid/widget/TextView;)V
    invoke-static {v3, v4}, Lcom/motorola/contacts/detail/ContactDetailVCardPreviewFragment;->access$600(Lcom/motorola/contacts/detail/ContactDetailVCardPreviewFragment;Landroid/widget/TextView;)V

    .line 888
    iget-object v3, v2, Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewCache;->photoView:Landroid/widget/ImageView;

    if-eqz v3, :cond_2

    .line 889
    iget-object v3, p0, Lcom/motorola/contacts/detail/ContactDetailVCardPreviewFragment$VcardPreviewAdapter;->this$0:Lcom/motorola/contacts/detail/ContactDetailVCardPreviewFragment;

    iget-object v4, v2, Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewCache;->photoView:Landroid/widget/ImageView;

    # invokes: Lcom/motorola/contacts/detail/ContactDetailVCardPreviewFragment;->setPhoto(Landroid/widget/ImageView;)V
    invoke-static {v3, v4}, Lcom/motorola/contacts/detail/ContactDetailVCardPreviewFragment;->access$700(Lcom/motorola/contacts/detail/ContactDetailVCardPreviewFragment;Landroid/widget/ImageView;)V

    .line 897
    :cond_2
    return-object v1
.end method
