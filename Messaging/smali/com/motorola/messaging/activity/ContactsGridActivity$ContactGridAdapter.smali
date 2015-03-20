.class public Lcom/motorola/messaging/activity/ContactsGridActivity$ContactGridAdapter;
.super Landroid/widget/BaseAdapter;
.source "ContactsGridActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/messaging/activity/ContactsGridActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ContactGridAdapter"
.end annotation


# instance fields
.field protected mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/motorola/messaging/activity/ContactsGridActivity;


# direct methods
.method public constructor <init>(Lcom/motorola/messaging/activity/ContactsGridActivity;Landroid/content/Context;)V
    .locals 1
    .param p2, "c"    # Landroid/content/Context;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/motorola/messaging/activity/ContactsGridActivity$ContactGridAdapter;->this$0:Lcom/motorola/messaging/activity/ContactsGridActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 110
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/motorola/messaging/activity/ContactsGridActivity$ContactGridAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 112
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/motorola/messaging/activity/ContactsGridActivity$ContactGridAdapter;->this$0:Lcom/motorola/messaging/activity/ContactsGridActivity;

    # getter for: Lcom/motorola/messaging/activity/ContactsGridActivity;->mContactList:Lcom/motorola/messaging/contact/ContactList;
    invoke-static {v0}, Lcom/motorola/messaging/activity/ContactsGridActivity;->access$000(Lcom/motorola/messaging/activity/ContactsGridActivity;)Lcom/motorola/messaging/contact/ContactList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 119
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 123
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 128
    iget-object v2, p0, Lcom/motorola/messaging/activity/ContactsGridActivity$ContactGridAdapter;->this$0:Lcom/motorola/messaging/activity/ContactsGridActivity;

    # getter for: Lcom/motorola/messaging/activity/ContactsGridActivity;->mContactList:Lcom/motorola/messaging/contact/ContactList;
    invoke-static {v2}, Lcom/motorola/messaging/activity/ContactsGridActivity;->access$000(Lcom/motorola/messaging/activity/ContactsGridActivity;)Lcom/motorola/messaging/contact/ContactList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/messaging/contact/Contact;

    .local v0, "contact":Lcom/motorola/messaging/contact/Contact;
    move-object v1, p2

    .line 130
    check-cast v1, Lcom/motorola/messaging/view/ContactTileView;

    .line 131
    .local v1, "contactTile":Lcom/motorola/messaging/view/ContactTileView;
    if-nez v1, :cond_0

    .line 132
    iget-object v2, p0, Lcom/motorola/messaging/activity/ContactsGridActivity$ContactGridAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f03000a

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .end local v1    # "contactTile":Lcom/motorola/messaging/view/ContactTileView;
    check-cast v1, Lcom/motorola/messaging/view/ContactTileView;

    .line 135
    .restart local v1    # "contactTile":Lcom/motorola/messaging/view/ContactTileView;
    :cond_0
    invoke-virtual {v1, v0}, Lcom/motorola/messaging/view/ContactTileView;->bind(Lcom/motorola/messaging/contact/Contact;)V

    .line 137
    return-object v1
.end method
