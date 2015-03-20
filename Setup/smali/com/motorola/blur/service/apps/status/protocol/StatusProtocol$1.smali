.class final Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$1;
.super Ljava/lang/Object;
.source "StatusProtocol.java"

# interfaces
.implements Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 5394
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public assignDescriptors(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/ExtensionRegistry;
    .locals 10
    .param p1, "root"    # Lcom/google/protobuf/Descriptors$FileDescriptor;

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 5397
    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;
    invoke-static {p1}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->access$20502(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 5398
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->internal_static_StatusChangelist_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->access$002(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    .line 5400
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->internal_static_StatusChangelist_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "Statuses"

    aput-object v3, v2, v5

    const-string v3, "Moods"

    aput-object v3, v2, v6

    const-class v3, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist;

    const-class v4, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChangelist$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->internal_static_StatusChangelist_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->access$102(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 5406
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->internal_static_StatusChanges_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->access$902(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    .line 5408
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->internal_static_StatusChanges_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->access$900()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "Adds"

    aput-object v3, v2, v5

    const-string v3, "Mods"

    aput-object v3, v2, v6

    const-string v3, "Deletes"

    aput-object v3, v2, v7

    const-class v3, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges;

    const-class v4, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusChanges$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->internal_static_StatusChanges_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->access$1002(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 5414
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->internal_static_MoodChanges_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->access$1702(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    .line 5416
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->internal_static_MoodChanges_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->access$1700()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "Adds"

    aput-object v3, v2, v5

    const-string v3, "Mods"

    aput-object v3, v2, v6

    const-string v3, "Deletes"

    aput-object v3, v2, v7

    const-class v3, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges;

    const-class v4, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodChanges$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->internal_static_MoodChanges_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->access$1802(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 5422
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->internal_static_StatusAndMoodAnchorChangeList_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->access$2502(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    .line 5424
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->internal_static_StatusAndMoodAnchorChangeList_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->access$2500()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "StatusAnchors"

    aput-object v3, v2, v5

    const-string v3, "MoodAnchors"

    aput-object v3, v2, v6

    const-class v3, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList;

    const-class v4, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodAnchorChangeList$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->internal_static_StatusAndMoodAnchorChangeList_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->access$2602(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 5430
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->internal_static_StatusAndMoodChangeList_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->access$3202(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    .line 5432
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->internal_static_StatusAndMoodChangeList_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->access$3200()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "Sam"

    aput-object v3, v2, v5

    const-string v3, "MaxAnchor"

    aput-object v3, v2, v6

    const-string v3, "SyncStatus"

    aput-object v3, v2, v7

    const-class v3, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList;

    const-class v4, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMoodChangeList$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->internal_static_StatusAndMoodChangeList_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->access$3302(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 5438
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->internal_static_StatusAnchor_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->access$4202(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    .line 5440
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->internal_static_StatusAnchor_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->access$4200()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "ProviderId"

    aput-object v3, v2, v5

    const-string v3, "IsMe"

    aput-object v3, v2, v6

    const-string v3, "FriendId"

    aput-object v3, v2, v7

    const-string v3, "SyncAnchor"

    aput-object v3, v2, v8

    const-string v3, "HasMood"

    aput-object v3, v2, v9

    const-class v3, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor;

    const-class v4, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAnchor$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->internal_static_StatusAnchor_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->access$4302(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 5446
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->internal_static_MoodAnchor_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->access$5702(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    .line 5448
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->internal_static_MoodAnchor_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->access$5700()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "ProviderId"

    aput-object v3, v2, v5

    const-string v3, "IsMe"

    aput-object v3, v2, v6

    const-string v3, "FriendId"

    aput-object v3, v2, v7

    const-string v3, "SyncAnchor"

    aput-object v3, v2, v8

    const-class v3, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor;

    const-class v4, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$MoodAnchor$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->internal_static_MoodAnchor_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->access$5802(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 5454
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x7

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->internal_static_Mood_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->access$7002(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    .line 5456
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->internal_static_Mood_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->access$7000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const/16 v2, 0xa

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "SyncAnchor"

    aput-object v3, v2, v5

    const-string v3, "Action"

    aput-object v3, v2, v6

    const-string v3, "ProviderId"

    aput-object v3, v2, v7

    const-string v3, "FriendId"

    aput-object v3, v2, v8

    const-string v3, "Timestamp"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "Id"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "Description"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "PictureName"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "PictureURL"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "IsMe"

    aput-object v4, v2, v3

    const-class v3, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood;

    const-class v4, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Mood$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->internal_static_Mood_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->access$7102(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 5462
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->internal_static_Status_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->access$9502(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    .line 5464
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->internal_static_Status_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->access$9500()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const/16 v2, 0x19

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "SyncAnchor"

    aput-object v3, v2, v5

    const-string v3, "Action"

    aput-object v3, v2, v6

    const-string v3, "Provider"

    aput-object v3, v2, v7

    const-string v3, "AccountId"

    aput-object v3, v2, v8

    const-string v3, "ExternalId"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "FriendId"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "Timestamp"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "ProviderId"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "Message"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "ProviderParams"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "IsMe"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "StatusId"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "DisabledReactions"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string v4, "OrigStatus"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string v4, "OrigPublisher"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string v4, "OrigProfUrl"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string v4, "MeFeedType"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string v4, "RelatedId"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string v4, "StatusMetaItem"

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string v4, "OrigStatusMetaItem"

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string v4, "MediaId"

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string v4, "OrigPublisherId"

    aput-object v4, v2, v3

    const/16 v3, 0x16

    const-string v4, "OrigPublisherProfileUrl"

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string v4, "OrigPublisherPicUrl"

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string v4, "StatusPhotoURL"

    aput-object v4, v2, v3

    const-class v3, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status;

    const-class v4, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$Status$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->internal_static_Status_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->access$9602(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 5470
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x9

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->internal_static_StatusAndMood_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->access$14702(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    .line 5472
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->internal_static_StatusAndMood_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->access$14700()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const/16 v2, 0xc

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Provider"

    aput-object v3, v2, v5

    const-string v3, "AccountId"

    aput-object v3, v2, v6

    const-string v3, "ExternalId"

    aput-object v3, v2, v7

    const-string v3, "FriendId"

    aput-object v3, v2, v8

    const-string v3, "ProviderId"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "Status"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "Mood"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "Sync"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "SyncAnchor"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "Error"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "SyncTimestamp"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "SyncError"

    aput-object v4, v2, v3

    const-class v3, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood;

    const-class v4, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusAndMood$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->internal_static_StatusAndMood_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->access$14802(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 5478
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0xa

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->internal_static_StatusReaction_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->access$17602(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    .line 5480
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->internal_static_StatusReaction_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->access$17600()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "Version"

    aput-object v3, v2, v5

    const-string v3, "Name"

    aput-object v3, v2, v6

    const-string v3, "ProviderParams"

    aput-object v3, v2, v7

    const-string v3, "UserParams"

    aput-object v3, v2, v8

    const-class v3, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction;

    const-class v4, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->internal_static_StatusReaction_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->access$17702(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 5486
    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->internal_static_StatusReaction_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->access$17600()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$Descriptor;->getNestedTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->internal_static_StatusReaction_UserParam_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->access$17802(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    .line 5488
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->internal_static_StatusReaction_UserParam_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->access$17800()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "Key"

    aput-object v3, v2, v5

    const-string v3, "Val"

    aput-object v3, v2, v6

    const-class v3, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam;

    const-class v4, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$StatusReaction$UserParam$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->internal_static_StatusReaction_UserParam_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->access$17902(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 5494
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0xb

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->internal_static_SetStatusResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->access$19702(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    .line 5496
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    # getter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->internal_static_SetStatusResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->access$19700()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "Error"

    aput-object v3, v2, v5

    const-string v3, "Sam"

    aput-object v3, v2, v6

    const-class v3, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse;

    const-class v4, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol$SetStatusResponse$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    # setter for: Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->internal_static_SetStatusResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {v0}, Lcom/motorola/blur/service/apps/status/protocol/StatusProtocol;->access$19802(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 5502
    const/4 v0, 0x0

    return-object v0
.end method
