.class public Lcom/android/contacts/group/GroupBrowseListAdapter$GroupListItemViewCache;
.super Ljava/lang/Object;
.source "GroupBrowseListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/group/GroupBrowseListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GroupListItemViewCache"
.end annotation


# instance fields
.field public final accountHeader:Landroid/view/View;

.field public final accountHeaderExtraTopPadding:Landroid/view/View;

.field public final accountName:Landroid/widget/TextView;

.field public final accountType:Landroid/widget/TextView;

.field public final divider:Landroid/view/View;

.field public final groupMemberCount:Landroid/widget/TextView;

.field public final groupTitle:Landroid/widget/TextView;

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 226
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 227
    const v0, 0x7f0600d8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/group/GroupBrowseListAdapter$GroupListItemViewCache;->accountType:Landroid/widget/TextView;

    .line 228
    const v0, 0x7f0600d9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/group/GroupBrowseListAdapter$GroupListItemViewCache;->accountName:Landroid/widget/TextView;

    .line 229
    const v0, 0x7f060044

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/group/GroupBrowseListAdapter$GroupListItemViewCache;->groupTitle:Landroid/widget/TextView;

    .line 230
    const v0, 0x7f0600ce

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/group/GroupBrowseListAdapter$GroupListItemViewCache;->groupMemberCount:Landroid/widget/TextView;

    .line 231
    const v0, 0x7f0600e8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/group/GroupBrowseListAdapter$GroupListItemViewCache;->accountHeader:Landroid/view/View;

    .line 232
    const v0, 0x7f0600e4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/group/GroupBrowseListAdapter$GroupListItemViewCache;->accountHeaderExtraTopPadding:Landroid/view/View;

    .line 233
    const v0, 0x7f060048

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/group/GroupBrowseListAdapter$GroupListItemViewCache;->divider:Landroid/view/View;

    .line 234
    return-void
.end method


# virtual methods
.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListAdapter$GroupListItemViewCache;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public setUri(Landroid/net/Uri;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 237
    iput-object p1, p0, Lcom/android/contacts/group/GroupBrowseListAdapter$GroupListItemViewCache;->mUri:Landroid/net/Uri;

    .line 238
    return-void
.end method
