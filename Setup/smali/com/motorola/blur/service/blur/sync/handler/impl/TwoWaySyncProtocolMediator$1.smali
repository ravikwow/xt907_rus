.class synthetic Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$1;
.super Ljava/lang/Object;
.source "TwoWaySyncProtocolMediator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$motorola$blur$service$blur$sync$handler$impl$AckClientAnchorChangeColleague$Result:[I

.field static final synthetic $SwitchMap$com$motorola$blur$service$blur$sync$handler$impl$CheckAdapterForChangesColleague$Result:[I

.field static final synthetic $SwitchMap$com$motorola$blur$service$blur$sync$handler$impl$CommitAdapterColleague$Result:[I

.field static final synthetic $SwitchMap$com$motorola$blur$service$blur$sync$handler$impl$GetChangesFromAdapterColleague$Result:[I

.field static final synthetic $SwitchMap$com$motorola$blur$service$blur$sync$handler$impl$GetClientAnchorColleague$Result:[I

.field static final synthetic $SwitchMap$com$motorola$blur$service$blur$sync$handler$impl$GetUpdateFromWSColleague$Result:[I

.field static final synthetic $SwitchMap$com$motorola$blur$service$blur$sync$handler$impl$HandleBadUpdateColleague$Result:[I

.field static final synthetic $SwitchMap$com$motorola$blur$service$blur$sync$handler$impl$ResetAdapterColleague$Result:[I

.field static final synthetic $SwitchMap$com$motorola$blur$service$blur$sync$handler$impl$ResolveConflictsColleague$Result:[I

.field static final synthetic $SwitchMap$com$motorola$blur$service$blur$sync$handler$impl$SendCommitToWSColleague$Result:[I

.field static final synthetic $SwitchMap$com$motorola$blur$service$blur$sync$handler$impl$TwoWaySyncProtocolMediator$State:[I

.field static final synthetic $SwitchMap$com$motorola$blur$service$blur$sync$handler$impl$UpdateAdapterColleague$Result:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 736
    invoke-static {}, Lcom/motorola/blur/service/blur/sync/handler/impl/HandleBadUpdateColleague$Result;->values()[Lcom/motorola/blur/service/blur/sync/handler/impl/HandleBadUpdateColleague$Result;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$1;->$SwitchMap$com$motorola$blur$service$blur$sync$handler$impl$HandleBadUpdateColleague$Result:[I

    :try_start_0
    sget-object v0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$1;->$SwitchMap$com$motorola$blur$service$blur$sync$handler$impl$HandleBadUpdateColleague$Result:[I

    sget-object v1, Lcom/motorola/blur/service/blur/sync/handler/impl/HandleBadUpdateColleague$Result;->OK:Lcom/motorola/blur/service/blur/sync/handler/impl/HandleBadUpdateColleague$Result;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_37

    :goto_0
    :try_start_1
    sget-object v0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$1;->$SwitchMap$com$motorola$blur$service$blur$sync$handler$impl$HandleBadUpdateColleague$Result:[I

    sget-object v1, Lcom/motorola/blur/service/blur/sync/handler/impl/HandleBadUpdateColleague$Result;->ERROR_INTERNAL:Lcom/motorola/blur/service/blur/sync/handler/impl/HandleBadUpdateColleague$Result;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_36

    .line 692
    :goto_1
    invoke-static {}, Lcom/motorola/blur/service/blur/sync/handler/impl/CommitAdapterColleague$Result;->values()[Lcom/motorola/blur/service/blur/sync/handler/impl/CommitAdapterColleague$Result;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$1;->$SwitchMap$com$motorola$blur$service$blur$sync$handler$impl$CommitAdapterColleague$Result:[I

    :try_start_2
    sget-object v0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$1;->$SwitchMap$com$motorola$blur$service$blur$sync$handler$impl$CommitAdapterColleague$Result:[I

    sget-object v1, Lcom/motorola/blur/service/blur/sync/handler/impl/CommitAdapterColleague$Result;->OK:Lcom/motorola/blur/service/blur/sync/handler/impl/CommitAdapterColleague$Result;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_35

    :goto_2
    :try_start_3
    sget-object v0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$1;->$SwitchMap$com$motorola$blur$service$blur$sync$handler$impl$CommitAdapterColleague$Result:[I

    sget-object v1, Lcom/motorola/blur/service/blur/sync/handler/impl/CommitAdapterColleague$Result;->ERROR_INTERNAL:Lcom/motorola/blur/service/blur/sync/handler/impl/CommitAdapterColleague$Result;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_34

    .line 602
    :goto_3
    invoke-static {}, Lcom/motorola/blur/service/blur/sync/handler/impl/SendCommitToWSColleague$Result;->values()[Lcom/motorola/blur/service/blur/sync/handler/impl/SendCommitToWSColleague$Result;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$1;->$SwitchMap$com$motorola$blur$service$blur$sync$handler$impl$SendCommitToWSColleague$Result:[I

    :try_start_4
    sget-object v0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$1;->$SwitchMap$com$motorola$blur$service$blur$sync$handler$impl$SendCommitToWSColleague$Result:[I

    sget-object v1, Lcom/motorola/blur/service/blur/sync/handler/impl/SendCommitToWSColleague$Result;->OK:Lcom/motorola/blur/service/blur/sync/handler/impl/SendCommitToWSColleague$Result;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_33

    :goto_4
    :try_start_5
    sget-object v0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$1;->$SwitchMap$com$motorola$blur$service$blur$sync$handler$impl$SendCommitToWSColleague$Result:[I

    sget-object v1, Lcom/motorola/blur/service/blur/sync/handler/impl/SendCommitToWSColleague$Result;->FAILED_CLIENT_OUT_OF_DATE:Lcom/motorola/blur/service/blur/sync/handler/impl/SendCommitToWSColleague$Result;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_32

    :goto_5
    :try_start_6
    sget-object v0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$1;->$SwitchMap$com$motorola$blur$service$blur$sync$handler$impl$SendCommitToWSColleague$Result:[I

    sget-object v1, Lcom/motorola/blur/service/blur/sync/handler/impl/SendCommitToWSColleague$Result;->ERROR_INTERNAL:Lcom/motorola/blur/service/blur/sync/handler/impl/SendCommitToWSColleague$Result;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_31

    :goto_6
    :try_start_7
    sget-object v0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$1;->$SwitchMap$com$motorola$blur$service$blur$sync$handler$impl$SendCommitToWSColleague$Result:[I

    sget-object v1, Lcom/motorola/blur/service/blur/sync/handler/impl/SendCommitToWSColleague$Result;->ERROR_MAY_BE_UNRECOVERABLE:Lcom/motorola/blur/service/blur/sync/handler/impl/SendCommitToWSColleague$Result;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_30

    :goto_7
    :try_start_8
    sget-object v0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$1;->$SwitchMap$com$motorola$blur$service$blur$sync$handler$impl$SendCommitToWSColleague$Result:[I

    sget-object v1, Lcom/motorola/blur/service/blur/sync/handler/impl/SendCommitToWSColleague$Result;->ERROR_SHOULD_RETRY_IMMEDIATELY:Lcom/motorola/blur/service/blur/sync/handler/impl/SendCommitToWSColleague$Result;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_2f

    :goto_8
    :try_start_9
    sget-object v0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$1;->$SwitchMap$com$motorola$blur$service$blur$sync$handler$impl$SendCommitToWSColleague$Result:[I

    sget-object v1, Lcom/motorola/blur/service/blur/sync/handler/impl/SendCommitToWSColleague$Result;->ERROR_RETRY_LATER:Lcom/motorola/blur/service/blur/sync/handler/impl/SendCommitToWSColleague$Result;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_2e

    :goto_9
    :try_start_a
    sget-object v0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$1;->$SwitchMap$com$motorola$blur$service$blur$sync$handler$impl$SendCommitToWSColleague$Result:[I

    sget-object v1, Lcom/motorola/blur/service/blur/sync/handler/impl/SendCommitToWSColleague$Result;->ERROR_SERVER_REPORTS_INCONSISTENT_SYNC_STATE:Lcom/motorola/blur/service/blur/sync/handler/impl/SendCommitToWSColleague$Result;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_2d

    .line 554
    :goto_a
    invoke-static {}, Lcom/motorola/blur/service/blur/sync/handler/impl/GetChangesFromAdapterColleague$Result;->values()[Lcom/motorola/blur/service/blur/sync/handler/impl/GetChangesFromAdapterColleague$Result;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$1;->$SwitchMap$com$motorola$blur$service$blur$sync$handler$impl$GetChangesFromAdapterColleague$Result:[I

    :try_start_b
    sget-object v0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$1;->$SwitchMap$com$motorola$blur$service$blur$sync$handler$impl$GetChangesFromAdapterColleague$Result:[I

    sget-object v1, Lcom/motorola/blur/service/blur/sync/handler/impl/GetChangesFromAdapterColleague$Result;->OK:Lcom/motorola/blur/service/blur/sync/handler/impl/GetChangesFromAdapterColleague$Result;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_2c

    :goto_b
    :try_start_c
    sget-object v0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$1;->$SwitchMap$com$motorola$blur$service$blur$sync$handler$impl$GetChangesFromAdapterColleague$Result:[I

    sget-object v1, Lcom/motorola/blur/service/blur/sync/handler/impl/GetChangesFromAdapterColleague$Result;->ERROR_INTERNAL:Lcom/motorola/blur/service/blur/sync/handler/impl/GetChangesFromAdapterColleague$Result;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_2b

    :goto_c
    :try_start_d
    sget-object v0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$1;->$SwitchMap$com$motorola$blur$service$blur$sync$handler$impl$GetChangesFromAdapterColleague$Result:[I

    sget-object v1, Lcom/motorola/blur/service/blur/sync/handler/impl/GetChangesFromAdapterColleague$Result;->ERROR_SHOULD_RETRY_IMMEDIATELY:Lcom/motorola/blur/service/blur/sync/handler/impl/GetChangesFromAdapterColleague$Result;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_2a

    .line 491
    :goto_d
    invoke-static {}, Lcom/motorola/blur/service/blur/sync/handler/impl/ResolveConflictsColleague$Result;->values()[Lcom/motorola/blur/service/blur/sync/handler/impl/ResolveConflictsColleague$Result;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$1;->$SwitchMap$com$motorola$blur$service$blur$sync$handler$impl$ResolveConflictsColleague$Result:[I

    :try_start_e
    sget-object v0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$1;->$SwitchMap$com$motorola$blur$service$blur$sync$handler$impl$ResolveConflictsColleague$Result:[I

    sget-object v1, Lcom/motorola/blur/service/blur/sync/handler/impl/ResolveConflictsColleague$Result;->OK:Lcom/motorola/blur/service/blur/sync/handler/impl/ResolveConflictsColleague$Result;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_29

    :goto_e
    :try_start_f
    sget-object v0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$1;->$SwitchMap$com$motorola$blur$service$blur$sync$handler$impl$ResolveConflictsColleague$Result:[I

    sget-object v1, Lcom/motorola/blur/service/blur/sync/handler/impl/ResolveConflictsColleague$Result;->ERROR_INTERNAL:Lcom/motorola/blur/service/blur/sync/handler/impl/ResolveConflictsColleague$Result;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_28

    .line 468
    :goto_f
    invoke-static {}, Lcom/motorola/blur/service/blur/sync/handler/impl/ResetAdapterColleague$Result;->values()[Lcom/motorola/blur/service/blur/sync/handler/impl/ResetAdapterColleague$Result;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$1;->$SwitchMap$com$motorola$blur$service$blur$sync$handler$impl$ResetAdapterColleague$Result:[I

    :try_start_10
    sget-object v0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$1;->$SwitchMap$com$motorola$blur$service$blur$sync$handler$impl$ResetAdapterColleague$Result:[I

    sget-object v1, Lcom/motorola/blur/service/blur/sync/handler/impl/ResetAdapterColleague$Result;->OK:Lcom/motorola/blur/service/blur/sync/handler/impl/ResetAdapterColleague$Result;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_27

    :goto_10
    :try_start_11
    sget-object v0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$1;->$SwitchMap$com$motorola$blur$service$blur$sync$handler$impl$ResetAdapterColleague$Result:[I

    sget-object v1, Lcom/motorola/blur/service/blur/sync/handler/impl/ResetAdapterColleague$Result;->ERROR_INTERNAL:Lcom/motorola/blur/service/blur/sync/handler/impl/ResetAdapterColleague$Result;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_26

    .line 409
    :goto_11
    invoke-static {}, Lcom/motorola/blur/service/blur/sync/handler/impl/UpdateAdapterColleague$Result;->values()[Lcom/motorola/blur/service/blur/sync/handler/impl/UpdateAdapterColleague$Result;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$1;->$SwitchMap$com$motorola$blur$service$blur$sync$handler$impl$UpdateAdapterColleague$Result:[I

    :try_start_12
    sget-object v0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$1;->$SwitchMap$com$motorola$blur$service$blur$sync$handler$impl$UpdateAdapterColleague$Result:[I

    sget-object v1, Lcom/motorola/blur/service/blur/sync/handler/impl/UpdateAdapterColleague$Result;->UPDATE_SUCCEEDED:Lcom/motorola/blur/service/blur/sync/handler/impl/UpdateAdapterColleague$Result;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_25

    :goto_12
    :try_start_13
    sget-object v0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$1;->$SwitchMap$com$motorola$blur$service$blur$sync$handler$impl$UpdateAdapterColleague$Result:[I

    sget-object v1, Lcom/motorola/blur/service/blur/sync/handler/impl/UpdateAdapterColleague$Result;->CONFLICTS:Lcom/motorola/blur/service/blur/sync/handler/impl/UpdateAdapterColleague$Result;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_24

    :goto_13
    :try_start_14
    sget-object v0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$1;->$SwitchMap$com$motorola$blur$service$blur$sync$handler$impl$UpdateAdapterColleague$Result:[I

    sget-object v1, Lcom/motorola/blur/service/blur/sync/handler/impl/UpdateAdapterColleague$Result;->ERROR_ANCHOR_MISMATCH:Lcom/motorola/blur/service/blur/sync/handler/impl/UpdateAdapterColleague$Result;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_23

    :goto_14
    :try_start_15
    sget-object v0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$1;->$SwitchMap$com$motorola$blur$service$blur$sync$handler$impl$UpdateAdapterColleague$Result:[I

    sget-object v1, Lcom/motorola/blur/service/blur/sync/handler/impl/UpdateAdapterColleague$Result;->ERROR_SHOULD_RETRY_IMMEDIATELY:Lcom/motorola/blur/service/blur/sync/handler/impl/UpdateAdapterColleague$Result;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_22

    :goto_15
    :try_start_16
    sget-object v0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$1;->$SwitchMap$com$motorola$blur$service$blur$sync$handler$impl$UpdateAdapterColleague$Result:[I

    sget-object v1, Lcom/motorola/blur/service/blur/sync/handler/impl/UpdateAdapterColleague$Result;->ERROR_INTERNAL:Lcom/motorola/blur/service/blur/sync/handler/impl/UpdateAdapterColleague$Result;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_21

    .line 385
    :goto_16
    invoke-static {}, Lcom/motorola/blur/service/blur/sync/handler/impl/AckClientAnchorChangeColleague$Result;->values()[Lcom/motorola/blur/service/blur/sync/handler/impl/AckClientAnchorChangeColleague$Result;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$1;->$SwitchMap$com$motorola$blur$service$blur$sync$handler$impl$AckClientAnchorChangeColleague$Result:[I

    :try_start_17
    sget-object v0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$1;->$SwitchMap$com$motorola$blur$service$blur$sync$handler$impl$AckClientAnchorChangeColleague$Result:[I

    sget-object v1, Lcom/motorola/blur/service/blur/sync/handler/impl/AckClientAnchorChangeColleague$Result;->OK:Lcom/motorola/blur/service/blur/sync/handler/impl/AckClientAnchorChangeColleague$Result;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_20

    :goto_17
    :try_start_18
    sget-object v0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$1;->$SwitchMap$com$motorola$blur$service$blur$sync$handler$impl$AckClientAnchorChangeColleague$Result:[I

    sget-object v1, Lcom/motorola/blur/service/blur/sync/handler/impl/AckClientAnchorChangeColleague$Result;->ERROR_INTERNAL:Lcom/motorola/blur/service/blur/sync/handler/impl/AckClientAnchorChangeColleague$Result;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_1f

    .line 302
    :goto_18
    invoke-static {}, Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague$Result;->values()[Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague$Result;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$1;->$SwitchMap$com$motorola$blur$service$blur$sync$handler$impl$GetUpdateFromWSColleague$Result:[I

    :try_start_19
    sget-object v0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$1;->$SwitchMap$com$motorola$blur$service$blur$sync$handler$impl$GetUpdateFromWSColleague$Result:[I

    sget-object v1, Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague$Result;->OK_DONE:Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague$Result;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_1e

    :goto_19
    :try_start_1a
    sget-object v0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$1;->$SwitchMap$com$motorola$blur$service$blur$sync$handler$impl$GetUpdateFromWSColleague$Result:[I

    sget-object v1, Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague$Result;->OK_IS_MORE:Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague$Result;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_1d

    :goto_1a
    :try_start_1b
    sget-object v0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$1;->$SwitchMap$com$motorola$blur$service$blur$sync$handler$impl$GetUpdateFromWSColleague$Result:[I

    sget-object v1, Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague$Result;->RESET_REQUIRED_DUE_TO_INVALID_CLIENT_ANCHOR:Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague$Result;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_1c

    :goto_1b
    :try_start_1c
    sget-object v0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$1;->$SwitchMap$com$motorola$blur$service$blur$sync$handler$impl$GetUpdateFromWSColleague$Result:[I

    sget-object v1, Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague$Result;->SERVER_RECOVERY_REQUIRED:Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague$Result;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_1b

    :goto_1c
    :try_start_1d
    sget-object v0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$1;->$SwitchMap$com$motorola$blur$service$blur$sync$handler$impl$GetUpdateFromWSColleague$Result:[I

    sget-object v1, Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague$Result;->ERROR_INTERNAL:Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague$Result;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_1a

    :goto_1d
    :try_start_1e
    sget-object v0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$1;->$SwitchMap$com$motorola$blur$service$blur$sync$handler$impl$GetUpdateFromWSColleague$Result:[I

    sget-object v1, Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague$Result;->ERROR_MAY_BE_UNRECOVERABLE:Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague$Result;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_1e} :catch_19

    :goto_1e
    :try_start_1f
    sget-object v0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$1;->$SwitchMap$com$motorola$blur$service$blur$sync$handler$impl$GetUpdateFromWSColleague$Result:[I

    sget-object v1, Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague$Result;->ERROR_SHOULD_RETRY_IMMEDIATELY:Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague$Result;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_1f} :catch_18

    :goto_1f
    :try_start_20
    sget-object v0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$1;->$SwitchMap$com$motorola$blur$service$blur$sync$handler$impl$GetUpdateFromWSColleague$Result:[I

    sget-object v1, Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague$Result;->ERROR_RETRY_LATER:Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague$Result;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_20} :catch_17

    :goto_20
    :try_start_21
    sget-object v0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$1;->$SwitchMap$com$motorola$blur$service$blur$sync$handler$impl$GetUpdateFromWSColleague$Result:[I

    sget-object v1, Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague$Result;->ERROR_SERVER_REPORTS_INCONSISTENT_SYNC_STATE:Lcom/motorola/blur/service/blur/sync/handler/impl/GetUpdateFromWSColleague$Result;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21 .. :try_end_21} :catch_16

    .line 281
    :goto_21
    invoke-static {}, Lcom/motorola/blur/service/blur/sync/handler/impl/GetClientAnchorColleague$Result;->values()[Lcom/motorola/blur/service/blur/sync/handler/impl/GetClientAnchorColleague$Result;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$1;->$SwitchMap$com$motorola$blur$service$blur$sync$handler$impl$GetClientAnchorColleague$Result:[I

    :try_start_22
    sget-object v0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$1;->$SwitchMap$com$motorola$blur$service$blur$sync$handler$impl$GetClientAnchorColleague$Result:[I

    sget-object v1, Lcom/motorola/blur/service/blur/sync/handler/impl/GetClientAnchorColleague$Result;->OK:Lcom/motorola/blur/service/blur/sync/handler/impl/GetClientAnchorColleague$Result;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_22} :catch_15

    :goto_22
    :try_start_23
    sget-object v0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$1;->$SwitchMap$com$motorola$blur$service$blur$sync$handler$impl$GetClientAnchorColleague$Result:[I

    sget-object v1, Lcom/motorola/blur/service/blur/sync/handler/impl/GetClientAnchorColleague$Result;->ERROR_INTERNAL:Lcom/motorola/blur/service/blur/sync/handler/impl/GetClientAnchorColleague$Result;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_23
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23 .. :try_end_23} :catch_14

    .line 260
    :goto_23
    invoke-static {}, Lcom/motorola/blur/service/blur/sync/handler/impl/CheckAdapterForChangesColleague$Result;->values()[Lcom/motorola/blur/service/blur/sync/handler/impl/CheckAdapterForChangesColleague$Result;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$1;->$SwitchMap$com$motorola$blur$service$blur$sync$handler$impl$CheckAdapterForChangesColleague$Result:[I

    :try_start_24
    sget-object v0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$1;->$SwitchMap$com$motorola$blur$service$blur$sync$handler$impl$CheckAdapterForChangesColleague$Result:[I

    sget-object v1, Lcom/motorola/blur/service/blur/sync/handler/impl/CheckAdapterForChangesColleague$Result;->OK:Lcom/motorola/blur/service/blur/sync/handler/impl/CheckAdapterForChangesColleague$Result;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_24
    .catch Ljava/lang/NoSuchFieldError; {:try_start_24 .. :try_end_24} :catch_13

    :goto_24
    :try_start_25
    sget-object v0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$1;->$SwitchMap$com$motorola$blur$service$blur$sync$handler$impl$CheckAdapterForChangesColleague$Result:[I

    sget-object v1, Lcom/motorola/blur/service/blur/sync/handler/impl/CheckAdapterForChangesColleague$Result;->ERROR_INTERNAL:Lcom/motorola/blur/service/blur/sync/handler/impl/CheckAdapterForChangesColleague$Result;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_25
    .catch Ljava/lang/NoSuchFieldError; {:try_start_25 .. :try_end_25} :catch_12

    .line 99
    :goto_25
    invoke-static {}, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;->values()[Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$1;->$SwitchMap$com$motorola$blur$service$blur$sync$handler$impl$TwoWaySyncProtocolMediator$State:[I

    :try_start_26
    sget-object v0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$1;->$SwitchMap$com$motorola$blur$service$blur$sync$handler$impl$TwoWaySyncProtocolMediator$State:[I

    sget-object v1, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;->START:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_26
    .catch Ljava/lang/NoSuchFieldError; {:try_start_26 .. :try_end_26} :catch_11

    :goto_26
    :try_start_27
    sget-object v0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$1;->$SwitchMap$com$motorola$blur$service$blur$sync$handler$impl$TwoWaySyncProtocolMediator$State:[I

    sget-object v1, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;->CHECK_ADAPTER_FOR_CHANGES_IF_UNFORCED:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_27 .. :try_end_27} :catch_10

    :goto_27
    :try_start_28
    sget-object v0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$1;->$SwitchMap$com$motorola$blur$service$blur$sync$handler$impl$TwoWaySyncProtocolMediator$State:[I

    sget-object v1, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;->GET_CLIENT_ANCHOR:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_28} :catch_f

    :goto_28
    :try_start_29
    sget-object v0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$1;->$SwitchMap$com$motorola$blur$service$blur$sync$handler$impl$TwoWaySyncProtocolMediator$State:[I

    sget-object v1, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;->GET_UPDATE_FROM_WS:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_29} :catch_e

    :goto_29
    :try_start_2a
    sget-object v0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$1;->$SwitchMap$com$motorola$blur$service$blur$sync$handler$impl$TwoWaySyncProtocolMediator$State:[I

    sget-object v1, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;->UPDATE_ADAPTER:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_2a} :catch_d

    :goto_2a
    :try_start_2b
    sget-object v0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$1;->$SwitchMap$com$motorola$blur$service$blur$sync$handler$impl$TwoWaySyncProtocolMediator$State:[I

    sget-object v1, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;->ACK_CLIENT_ANCHOR_CHANGE_1:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_2b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2b .. :try_end_2b} :catch_c

    :goto_2b
    :try_start_2c
    sget-object v0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$1;->$SwitchMap$com$motorola$blur$service$blur$sync$handler$impl$TwoWaySyncProtocolMediator$State:[I

    sget-object v1, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;->RESET_ADAPTER:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_2c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2c .. :try_end_2c} :catch_b

    :goto_2c
    :try_start_2d
    sget-object v0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$1;->$SwitchMap$com$motorola$blur$service$blur$sync$handler$impl$TwoWaySyncProtocolMediator$State:[I

    sget-object v1, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;->RESOLVE_CONFLICTS:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_2d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2d .. :try_end_2d} :catch_a

    :goto_2d
    :try_start_2e
    sget-object v0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$1;->$SwitchMap$com$motorola$blur$service$blur$sync$handler$impl$TwoWaySyncProtocolMediator$State:[I

    sget-object v1, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;->UPDATE_ADAPTER_AFTER_CONFLICT_RESOLUTION:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_2e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2e .. :try_end_2e} :catch_9

    :goto_2e
    :try_start_2f
    sget-object v0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$1;->$SwitchMap$com$motorola$blur$service$blur$sync$handler$impl$TwoWaySyncProtocolMediator$State:[I

    sget-object v1, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;->CHECK_ADAPTER_FOR_CHANGES_2:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_2f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2f .. :try_end_2f} :catch_8

    :goto_2f
    :try_start_30
    sget-object v0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$1;->$SwitchMap$com$motorola$blur$service$blur$sync$handler$impl$TwoWaySyncProtocolMediator$State:[I

    sget-object v1, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;->GET_CHANGES_FROM_ADAPTER:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_30
    .catch Ljava/lang/NoSuchFieldError; {:try_start_30 .. :try_end_30} :catch_7

    :goto_30
    :try_start_31
    sget-object v0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$1;->$SwitchMap$com$motorola$blur$service$blur$sync$handler$impl$TwoWaySyncProtocolMediator$State:[I

    sget-object v1, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;->SEND_COMMIT_TO_WS:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_31
    .catch Ljava/lang/NoSuchFieldError; {:try_start_31 .. :try_end_31} :catch_6

    :goto_31
    :try_start_32
    sget-object v0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$1;->$SwitchMap$com$motorola$blur$service$blur$sync$handler$impl$TwoWaySyncProtocolMediator$State:[I

    sget-object v1, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;->COMMIT_ADAPTER:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_32
    .catch Ljava/lang/NoSuchFieldError; {:try_start_32 .. :try_end_32} :catch_5

    :goto_32
    :try_start_33
    sget-object v0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$1;->$SwitchMap$com$motorola$blur$service$blur$sync$handler$impl$TwoWaySyncProtocolMediator$State:[I

    sget-object v1, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;->ACK_CLIENT_ANCHOR_CHANGE_2:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_33} :catch_4

    :goto_33
    :try_start_34
    sget-object v0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$1;->$SwitchMap$com$motorola$blur$service$blur$sync$handler$impl$TwoWaySyncProtocolMediator$State:[I

    sget-object v1, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;->REPORT_BAD_UPDATE:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_34
    .catch Ljava/lang/NoSuchFieldError; {:try_start_34 .. :try_end_34} :catch_3

    :goto_34
    :try_start_35
    sget-object v0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$1;->$SwitchMap$com$motorola$blur$service$blur$sync$handler$impl$TwoWaySyncProtocolMediator$State:[I

    sget-object v1, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;->ERROR:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_35} :catch_2

    :goto_35
    :try_start_36
    sget-object v0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$1;->$SwitchMap$com$motorola$blur$service$blur$sync$handler$impl$TwoWaySyncProtocolMediator$State:[I

    sget-object v1, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;->SUCCESS:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_36
    .catch Ljava/lang/NoSuchFieldError; {:try_start_36 .. :try_end_36} :catch_1

    :goto_36
    :try_start_37
    sget-object v0, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$1;->$SwitchMap$com$motorola$blur$service$blur$sync$handler$impl$TwoWaySyncProtocolMediator$State:[I

    sget-object v1, Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;->WARNING:Lcom/motorola/blur/service/blur/sync/handler/impl/TwoWaySyncProtocolMediator$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_37
    .catch Ljava/lang/NoSuchFieldError; {:try_start_37 .. :try_end_37} :catch_0

    :goto_37
    return-void

    :catch_0
    move-exception v0

    goto :goto_37

    :catch_1
    move-exception v0

    goto :goto_36

    :catch_2
    move-exception v0

    goto :goto_35

    :catch_3
    move-exception v0

    goto :goto_34

    :catch_4
    move-exception v0

    goto :goto_33

    :catch_5
    move-exception v0

    goto :goto_32

    :catch_6
    move-exception v0

    goto :goto_31

    :catch_7
    move-exception v0

    goto :goto_30

    :catch_8
    move-exception v0

    goto :goto_2f

    :catch_9
    move-exception v0

    goto :goto_2e

    :catch_a
    move-exception v0

    goto/16 :goto_2d

    :catch_b
    move-exception v0

    goto/16 :goto_2c

    :catch_c
    move-exception v0

    goto/16 :goto_2b

    :catch_d
    move-exception v0

    goto/16 :goto_2a

    :catch_e
    move-exception v0

    goto/16 :goto_29

    :catch_f
    move-exception v0

    goto/16 :goto_28

    :catch_10
    move-exception v0

    goto/16 :goto_27

    :catch_11
    move-exception v0

    goto/16 :goto_26

    .line 260
    :catch_12
    move-exception v0

    goto/16 :goto_25

    :catch_13
    move-exception v0

    goto/16 :goto_24

    .line 281
    :catch_14
    move-exception v0

    goto/16 :goto_23

    :catch_15
    move-exception v0

    goto/16 :goto_22

    .line 302
    :catch_16
    move-exception v0

    goto/16 :goto_21

    :catch_17
    move-exception v0

    goto/16 :goto_20

    :catch_18
    move-exception v0

    goto/16 :goto_1f

    :catch_19
    move-exception v0

    goto/16 :goto_1e

    :catch_1a
    move-exception v0

    goto/16 :goto_1d

    :catch_1b
    move-exception v0

    goto/16 :goto_1c

    :catch_1c
    move-exception v0

    goto/16 :goto_1b

    :catch_1d
    move-exception v0

    goto/16 :goto_1a

    :catch_1e
    move-exception v0

    goto/16 :goto_19

    .line 385
    :catch_1f
    move-exception v0

    goto/16 :goto_18

    :catch_20
    move-exception v0

    goto/16 :goto_17

    .line 409
    :catch_21
    move-exception v0

    goto/16 :goto_16

    :catch_22
    move-exception v0

    goto/16 :goto_15

    :catch_23
    move-exception v0

    goto/16 :goto_14

    :catch_24
    move-exception v0

    goto/16 :goto_13

    :catch_25
    move-exception v0

    goto/16 :goto_12

    .line 468
    :catch_26
    move-exception v0

    goto/16 :goto_11

    :catch_27
    move-exception v0

    goto/16 :goto_10

    .line 491
    :catch_28
    move-exception v0

    goto/16 :goto_f

    :catch_29
    move-exception v0

    goto/16 :goto_e

    .line 554
    :catch_2a
    move-exception v0

    goto/16 :goto_d

    :catch_2b
    move-exception v0

    goto/16 :goto_c

    :catch_2c
    move-exception v0

    goto/16 :goto_b

    .line 602
    :catch_2d
    move-exception v0

    goto/16 :goto_a

    :catch_2e
    move-exception v0

    goto/16 :goto_9

    :catch_2f
    move-exception v0

    goto/16 :goto_8

    :catch_30
    move-exception v0

    goto/16 :goto_7

    :catch_31
    move-exception v0

    goto/16 :goto_6

    :catch_32
    move-exception v0

    goto/16 :goto_5

    :catch_33
    move-exception v0

    goto/16 :goto_4

    .line 692
    :catch_34
    move-exception v0

    goto/16 :goto_3

    :catch_35
    move-exception v0

    goto/16 :goto_2

    .line 736
    :catch_36
    move-exception v0

    goto/16 :goto_1

    :catch_37
    move-exception v0

    goto/16 :goto_0
.end method
