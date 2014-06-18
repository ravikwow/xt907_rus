.class public Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMember;
.super Ljava/lang/Object;
.source "SuggestedMemberListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/group/SuggestedMemberListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SuggestedMember"
.end annotation


# instance fields
.field private mContactId:J

.field private mDisplayName:Ljava/lang/String;

.field private mExtraInfo:Ljava/lang/String;

.field private mPhoto:[B

.field private mRawContactId:J

.field final synthetic this$0:Lcom/android/contacts/group/SuggestedMemberListAdapter;


# direct methods
.method public constructor <init>(Lcom/android/contacts/group/SuggestedMemberListAdapter;JLjava/lang/String;J)V
    .locals 0
    .param p2, "rawContactId"    # J
    .param p4, "displayName"    # Ljava/lang/String;
    .param p5, "contactId"    # J

    .prologue
    .line 339
    iput-object p1, p0, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMember;->this$0:Lcom/android/contacts/group/SuggestedMemberListAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 340
    iput-wide p2, p0, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMember;->mRawContactId:J

    .line 341
    iput-object p4, p0, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMember;->mDisplayName:Ljava/lang/String;

    .line 342
    iput-wide p5, p0, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMember;->mContactId:J

    .line 343
    return-void
.end method


# virtual methods
.method public getContactId()J
    .locals 2

    .prologue
    .line 358
    iget-wide v0, p0, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMember;->mContactId:J

    return-wide v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMember;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getExtraInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMember;->mExtraInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getPhotoByteArray()[B
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMember;->mPhoto:[B

    return-object v0
.end method

.method public getRawContactId()J
    .locals 2

    .prologue
    .line 354
    iget-wide v0, p0, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMember;->mRawContactId:J

    return-wide v0
.end method

.method public hasExtraInfo()Z
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMember;->mExtraInfo:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setExtraInfo(Ljava/lang/String;)V
    .locals 0
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 373
    iput-object p1, p0, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMember;->mExtraInfo:Ljava/lang/String;

    .line 374
    return-void
.end method

.method public setPhotoByteArray([B)V
    .locals 0
    .param p1, "photo"    # [B

    .prologue
    .line 377
    iput-object p1, p0, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMember;->mPhoto:[B

    .line 378
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 382
    invoke-virtual {p0}, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMember;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
