.class final Lcom/motorola/blur/service/news/protocol/NewsProtocol$1;
.super Ljava/lang/Object;
.source "NewsProtocol.java"

# interfaces
.implements Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/news/protocol/NewsProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 7197
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

    .line 7200
    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;
    invoke-static {p1}, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->access$25902(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 7201
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_Error_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->access$002(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    .line 7203
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_Error_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Type"

    aput-object v3, v2, v5

    const-class v3, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error;

    const-class v4, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Error$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_Error_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->access$102(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 7209
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_NewsFeedListRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->access$702(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    .line 7211
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_NewsFeedListRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->access$700()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "Version"

    aput-object v3, v2, v5

    const-string v3, "Type"

    aput-object v3, v2, v6

    const-string v3, "Language"

    aput-object v3, v2, v7

    const-string v3, "CompressionType"

    aput-object v3, v2, v8

    const-class v3, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest;

    const-class v4, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListRequest$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_NewsFeedListRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->access$802(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 7217
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_NewsFeedListResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->access$2002(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    .line 7219
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_NewsFeedListResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->access$2000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "Version"

    aput-object v3, v2, v5

    const-string v3, "Error"

    aput-object v3, v2, v6

    const-string v3, "Data"

    aput-object v3, v2, v7

    const-class v3, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse;

    const-class v4, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_NewsFeedListResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->access$2102(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 7225
    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_NewsFeedListResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->access$2000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$Descriptor;->getNestedTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_NewsFeedListResponse_Data_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->access$2202(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    .line 7227
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_NewsFeedListResponse_Data_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->access$2200()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "Type"

    aput-object v3, v2, v5

    const-string v3, "FeedList"

    aput-object v3, v2, v6

    const-string v3, "CompressionType"

    aput-object v3, v2, v7

    const-string v3, "CompressedFeedList"

    aput-object v3, v2, v8

    const-class v3, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data;

    const-class v4, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedListResponse$Data$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_NewsFeedListResponse_Data_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->access$2302(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 7233
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_NewsFeedList_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->access$4302(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    .line 7235
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_NewsFeedList_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->access$4300()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "LastModified"

    aput-object v3, v2, v5

    const-string v3, "Name"

    aput-object v3, v2, v6

    const-string v3, "DisplayName"

    aput-object v3, v2, v7

    const-string v3, "Description"

    aput-object v3, v2, v8

    const-string v3, "BannerUrl"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "FavIconUrl"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "Container"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "IsBundle"

    aput-object v4, v2, v3

    const-class v3, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList;

    const-class v4, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_NewsFeedList_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->access$4402(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 7241
    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_NewsFeedList_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->access$4300()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$Descriptor;->getNestedTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_NewsFeedList_Container_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->access$4502(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    .line 7243
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_NewsFeedList_Container_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->access$4500()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Name"

    aput-object v3, v2, v5

    const-string v3, "DisplayName"

    aput-object v3, v2, v6

    const-string v3, "Description"

    aput-object v3, v2, v7

    const-string v3, "Container"

    aput-object v3, v2, v8

    const-string v3, "FeedDesc"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "BannerUrl"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "FavIconUrl"

    aput-object v4, v2, v3

    const-class v3, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container;

    const-class v4, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_NewsFeedList_Container_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->access$4602(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 7249
    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_NewsFeedList_Container_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->access$4500()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$Descriptor;->getNestedTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_NewsFeedList_Container_FeedDescription_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->access$4702(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    .line 7251
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_NewsFeedList_Container_FeedDescription_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->access$4700()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Name"

    aput-object v3, v2, v5

    const-string v3, "XmlUrl"

    aput-object v3, v2, v6

    const-string v3, "HtmlUrl"

    aput-object v3, v2, v7

    const-string v3, "Description"

    aput-object v3, v2, v8

    const-string v3, "ImageUrl"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "BlurFeedId"

    aput-object v4, v2, v3

    const-class v3, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription;

    const-class v4, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedList$Container$FeedDescription$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_NewsFeedList_Container_FeedDescription_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->access$4802(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 7257
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_SubscriptionRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->access$9702(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    .line 7259
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_SubscriptionRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->access$9700()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "Version"

    aput-object v3, v2, v5

    const-string v3, "Type"

    aput-object v3, v2, v6

    const-string v3, "NewSubs"

    aput-object v3, v2, v7

    const-string v3, "DeleteSubs"

    aput-object v3, v2, v8

    const-class v3, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest;

    const-class v4, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_SubscriptionRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->access$9802(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 7265
    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_SubscriptionRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->access$9700()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$Descriptor;->getNestedTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_SubscriptionRequest_NewSubscriptions_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->access$9902(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    .line 7267
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_SubscriptionRequest_NewSubscriptions_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->access$9900()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Url"

    aput-object v3, v2, v5

    const-class v3, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions;

    const-class v4, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$NewSubscriptions$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_SubscriptionRequest_NewSubscriptions_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->access$10002(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 7273
    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_SubscriptionRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->access$9700()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$Descriptor;->getNestedTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_SubscriptionRequest_DeleteSubscriptions_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->access$10502(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    .line 7275
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_SubscriptionRequest_DeleteSubscriptions_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->access$10500()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "BlurFeedId"

    aput-object v3, v2, v5

    const-class v3, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions;

    const-class v4, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionRequest$DeleteSubscriptions$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_SubscriptionRequest_DeleteSubscriptions_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->access$10602(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 7281
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_SubscriptionResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->access$12202(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    .line 7283
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_SubscriptionResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->access$12200()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "Version"

    aput-object v3, v2, v5

    const-string v3, "Error"

    aput-object v3, v2, v6

    const-string v3, "SubList"

    aput-object v3, v2, v7

    const-string v3, "ErrorDetailList"

    aput-object v3, v2, v8

    const-class v3, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse;

    const-class v4, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_SubscriptionResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->access$12302(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 7289
    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_SubscriptionResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->access$12200()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$Descriptor;->getNestedTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_SubscriptionResponse_ErrorDetailList_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->access$12402(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    .line 7291
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_SubscriptionResponse_ErrorDetailList_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->access$12400()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ErrorDetail"

    aput-object v3, v2, v5

    const-class v3, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList;

    const-class v4, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_SubscriptionResponse_ErrorDetailList_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->access$12502(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 7297
    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_SubscriptionResponse_ErrorDetailList_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->access$12400()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$Descriptor;->getNestedTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_SubscriptionResponse_ErrorDetailList_ErrorDetail_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->access$12602(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    .line 7299
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_SubscriptionResponse_ErrorDetailList_ErrorDetail_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->access$12600()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "Url"

    aput-object v3, v2, v5

    const-string v3, "ErrorType"

    aput-object v3, v2, v6

    const-class v3, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$ErrorDetail;

    const-class v4, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionResponse$ErrorDetailList$ErrorDetail$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_SubscriptionResponse_ErrorDetailList_ErrorDetail_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->access$12702(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 7305
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_NewsFeedInfo_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->access$15002(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    .line 7307
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_NewsFeedInfo_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->access$15000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const/16 v2, 0xa

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "XmlUrl"

    aput-object v3, v2, v5

    const-string v3, "BlurFeedId"

    aput-object v3, v2, v6

    const-string v3, "Name"

    aput-object v3, v2, v7

    const-string v3, "Description"

    aput-object v3, v2, v8

    const-string v3, "Language"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "ImageUrl"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "Ttl"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "Etag"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "LastModified"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "HtmlUrl"

    aput-object v4, v2, v3

    const-class v3, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo;

    const-class v4, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfo$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_NewsFeedInfo_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->access$15102(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 7313
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x7

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_NewsFeedInfoList_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->access$17502(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    .line 7315
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_NewsFeedInfoList_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->access$17500()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Info"

    aput-object v3, v2, v5

    const-class v3, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList;

    const-class v4, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedInfoList$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_NewsFeedInfoList_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->access$17602(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 7321
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_Subscription_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->access$18102(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    .line 7323
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_Subscription_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->access$18100()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Info"

    aput-object v3, v2, v5

    const-class v3, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription;

    const-class v4, Lcom/motorola/blur/service/news/protocol/NewsProtocol$Subscription$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_Subscription_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->access$18202(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 7329
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x9

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_SubscriptionList_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->access$18802(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    .line 7331
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_SubscriptionList_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->access$18800()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Subscription"

    aput-object v3, v2, v5

    const-class v3, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList;

    const-class v4, Lcom/motorola/blur/service/news/protocol/NewsProtocol$SubscriptionList$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_SubscriptionList_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->access$18902(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 7337
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0xa

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_NewsFeedEntry_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->access$19402(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    .line 7339
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_NewsFeedEntry_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->access$19400()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "BlurFeedId"

    aput-object v3, v2, v5

    const-string v3, "EntryId"

    aput-object v3, v2, v6

    const-string v3, "Title"

    aput-object v3, v2, v7

    const-string v3, "TimeStamp"

    aput-object v3, v2, v8

    const-string v3, "Content"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "Link"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "Summary"

    aput-object v4, v2, v3

    const-class v3, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry;

    const-class v4, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_NewsFeedEntry_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->access$19502(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 7345
    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_NewsFeedEntry_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->access$19400()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$Descriptor;->getNestedTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_NewsFeedEntry_Text_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->access$19602(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    .line 7347
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_NewsFeedEntry_Text_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->access$19600()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "Data"

    aput-object v3, v2, v5

    const-string v3, "Type"

    aput-object v3, v2, v6

    const-class v3, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text;

    const-class v4, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Text$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_NewsFeedEntry_Text_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->access$19702(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 7353
    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_NewsFeedEntry_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->access$19400()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$Descriptor;->getNestedTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_NewsFeedEntry_Content_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->access$20502(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    .line 7355
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_NewsFeedEntry_Content_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->access$20500()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "Data"

    aput-object v3, v2, v5

    const-string v3, "Type"

    aput-object v3, v2, v6

    const-string v3, "Src"

    aput-object v3, v2, v7

    const-class v3, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content;

    const-class v4, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Content$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_NewsFeedEntry_Content_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->access$20602(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 7361
    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_NewsFeedEntry_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->access$19400()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$Descriptor;->getNestedTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_NewsFeedEntry_Link_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->access$21602(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    .line 7363
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_NewsFeedEntry_Link_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->access$21600()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Href"

    aput-object v3, v2, v5

    const-string v3, "Rel"

    aput-object v3, v2, v6

    const-string v3, "Type"

    aput-object v3, v2, v7

    const-string v3, "Hreflang"

    aput-object v3, v2, v8

    const-string v3, "Title"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "Length"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "Width"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "Height"

    aput-object v4, v2, v3

    const-class v3, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link;

    const-class v4, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntry$Link$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_NewsFeedEntry_Link_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->access$21702(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 7369
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0xb

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_NewsFeedEntries_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->access$25302(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    .line 7371
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    # getter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_NewsFeedEntries_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->access$25300()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Entry"

    aput-object v3, v2, v5

    const-class v3, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries;

    const-class v4, Lcom/motorola/blur/service/news/protocol/NewsProtocol$NewsFeedEntries$Builder;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    # setter for: Lcom/motorola/blur/service/news/protocol/NewsProtocol;->internal_static_NewsFeedEntries_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {v0}, Lcom/motorola/blur/service/news/protocol/NewsProtocol;->access$25402(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 7377
    const/4 v0, 0x0

    return-object v0
.end method
