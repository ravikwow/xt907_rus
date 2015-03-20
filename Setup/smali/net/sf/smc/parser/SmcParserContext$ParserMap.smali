.class abstract Lnet/sf/smc/parser/SmcParserContext$ParserMap;
.super Ljava/lang/Object;
.source "SmcParserContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/smc/parser/SmcParserContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "ParserMap"
.end annotation


# static fields
.field public static final Access:Lnet/sf/smc/parser/SmcParserContext$ParserMap_Access;

.field public static final ActionEnd:Lnet/sf/smc/parser/SmcParserContext$ParserMap_ActionEnd;

.field public static final ActionStart:Lnet/sf/smc/parser/SmcParserContext$ParserMap_ActionStart;

.field public static final ActionStartError:Lnet/sf/smc/parser/SmcParserContext$ParserMap_ActionStartError;

.field public static final Context:Lnet/sf/smc/parser/SmcParserContext$ParserMap_Context;

.field public static final Declare:Lnet/sf/smc/parser/SmcParserContext$ParserMap_Declare;

.field private static final Default:Lnet/sf/smc/parser/SmcParserContext$ParserMap_Default;

.field public static final EndState:Lnet/sf/smc/parser/SmcParserContext$ParserMap_EndState;

.field public static final EndStateError:Lnet/sf/smc/parser/SmcParserContext$ParserMap_EndStateError;

.field public static final EntryEnd:Lnet/sf/smc/parser/SmcParserContext$ParserMap_EntryEnd;

.field public static final EntryStart:Lnet/sf/smc/parser/SmcParserContext$ParserMap_EntryStart;

.field public static final ExitEnd:Lnet/sf/smc/parser/SmcParserContext$ParserMap_ExitEnd;

.field public static final ExitStart:Lnet/sf/smc/parser/SmcParserContext$ParserMap_ExitStart;

.field public static final FsmClassName:Lnet/sf/smc/parser/SmcParserContext$ParserMap_FsmClassName;

.field public static final HeaderFile:Lnet/sf/smc/parser/SmcParserContext$ParserMap_HeaderFile;

.field public static final Import:Lnet/sf/smc/parser/SmcParserContext$ParserMap_Import;

.field public static final IncludeFile:Lnet/sf/smc/parser/SmcParserContext$ParserMap_IncludeFile;

.field public static final JumpEnd:Lnet/sf/smc/parser/SmcParserContext$ParserMap_JumpEnd;

.field public static final JumpError:Lnet/sf/smc/parser/SmcParserContext$ParserMap_JumpError;

.field public static final JumpMap:Lnet/sf/smc/parser/SmcParserContext$ParserMap_JumpMap;

.field public static final JumpStart:Lnet/sf/smc/parser/SmcParserContext$ParserMap_JumpStart;

.field public static final MapName:Lnet/sf/smc/parser/SmcParserContext$ParserMap_MapName;

.field public static final MapStart:Lnet/sf/smc/parser/SmcParserContext$ParserMap_MapStart;

.field public static final MapStartError:Lnet/sf/smc/parser/SmcParserContext$ParserMap_MapStartError;

.field public static final MapStates:Lnet/sf/smc/parser/SmcParserContext$ParserMap_MapStates;

.field public static final MapStatesError:Lnet/sf/smc/parser/SmcParserContext$ParserMap_MapStatesError;

.field public static final Package:Lnet/sf/smc/parser/SmcParserContext$ParserMap_Package;

.field public static final PopAction:Lnet/sf/smc/parser/SmcParserContext$ParserMap_PopAction;

.field public static final PopArgs:Lnet/sf/smc/parser/SmcParserContext$ParserMap_PopArgs;

.field public static final PopArgsEnd:Lnet/sf/smc/parser/SmcParserContext$ParserMap_PopArgsEnd;

.field public static final PopError:Lnet/sf/smc/parser/SmcParserContext$ParserMap_PopError;

.field public static final PopStart:Lnet/sf/smc/parser/SmcParserContext$ParserMap_PopStart;

.field public static final PushEnd:Lnet/sf/smc/parser/SmcParserContext$ParserMap_PushEnd;

.field public static final PushError:Lnet/sf/smc/parser/SmcParserContext$ParserMap_PushError;

.field public static final PushMap:Lnet/sf/smc/parser/SmcParserContext$ParserMap_PushMap;

.field public static final PushStart:Lnet/sf/smc/parser/SmcParserContext$ParserMap_PushStart;

.field public static final PushTransition:Lnet/sf/smc/parser/SmcParserContext$ParserMap_PushTransition;

.field public static final SimpleTrans:Lnet/sf/smc/parser/SmcParserContext$ParserMap_SimpleTrans;

.field public static final Start:Lnet/sf/smc/parser/SmcParserContext$ParserMap_Start;

.field public static final StartError:Lnet/sf/smc/parser/SmcParserContext$ParserMap_StartError;

.field public static final StartState:Lnet/sf/smc/parser/SmcParserContext$ParserMap_StartState;

.field public static final StateStart:Lnet/sf/smc/parser/SmcParserContext$ParserMap_StateStart;

.field public static final StateStartError:Lnet/sf/smc/parser/SmcParserContext$ParserMap_StateStartError;

.field public static final States:Lnet/sf/smc/parser/SmcParserContext$ParserMap_States;

.field public static final TransError:Lnet/sf/smc/parser/SmcParserContext$ParserMap_TransError;

.field public static final TransGuard:Lnet/sf/smc/parser/SmcParserContext$ParserMap_TransGuard;

.field public static final TransNext:Lnet/sf/smc/parser/SmcParserContext$ParserMap_TransNext;

.field public static final TransNextError:Lnet/sf/smc/parser/SmcParserContext$ParserMap_TransNextError;

.field public static final TransParams:Lnet/sf/smc/parser/SmcParserContext$ParserMap_TransParams;

.field public static final TransStart:Lnet/sf/smc/parser/SmcParserContext$ParserMap_TransStart;

.field public static final TransStartError:Lnet/sf/smc/parser/SmcParserContext$ParserMap_TransStartError;

.field public static final Transitions:Lnet/sf/smc/parser/SmcParserContext$ParserMap_Transitions;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 747
    new-instance v0, Lnet/sf/smc/parser/SmcParserContext$ParserMap_Start;

    const-string v1, "ParserMap.Start"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v3}, Lnet/sf/smc/parser/SmcParserContext$ParserMap_Start;-><init>(Ljava/lang/String;ILnet/sf/smc/parser/SmcParserContext$1;)V

    sput-object v0, Lnet/sf/smc/parser/SmcParserContext$ParserMap;->Start:Lnet/sf/smc/parser/SmcParserContext$ParserMap_Start;

    .line 749
    new-instance v0, Lnet/sf/smc/parser/SmcParserContext$ParserMap_Context;

    const-string v1, "ParserMap.Context"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v3}, Lnet/sf/smc/parser/SmcParserContext$ParserMap_Context;-><init>(Ljava/lang/String;ILnet/sf/smc/parser/SmcParserContext$1;)V

    sput-object v0, Lnet/sf/smc/parser/SmcParserContext$ParserMap;->Context:Lnet/sf/smc/parser/SmcParserContext$ParserMap_Context;

    .line 751
    new-instance v0, Lnet/sf/smc/parser/SmcParserContext$ParserMap_StartState;

    const-string v1, "ParserMap.StartState"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v3}, Lnet/sf/smc/parser/SmcParserContext$ParserMap_StartState;-><init>(Ljava/lang/String;ILnet/sf/smc/parser/SmcParserContext$1;)V

    sput-object v0, Lnet/sf/smc/parser/SmcParserContext$ParserMap;->StartState:Lnet/sf/smc/parser/SmcParserContext$ParserMap_StartState;

    .line 753
    new-instance v0, Lnet/sf/smc/parser/SmcParserContext$ParserMap_HeaderFile;

    const-string v1, "ParserMap.HeaderFile"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v3}, Lnet/sf/smc/parser/SmcParserContext$ParserMap_HeaderFile;-><init>(Ljava/lang/String;ILnet/sf/smc/parser/SmcParserContext$1;)V

    sput-object v0, Lnet/sf/smc/parser/SmcParserContext$ParserMap;->HeaderFile:Lnet/sf/smc/parser/SmcParserContext$ParserMap_HeaderFile;

    .line 755
    new-instance v0, Lnet/sf/smc/parser/SmcParserContext$ParserMap_IncludeFile;

    const-string v1, "ParserMap.IncludeFile"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v3}, Lnet/sf/smc/parser/SmcParserContext$ParserMap_IncludeFile;-><init>(Ljava/lang/String;ILnet/sf/smc/parser/SmcParserContext$1;)V

    sput-object v0, Lnet/sf/smc/parser/SmcParserContext$ParserMap;->IncludeFile:Lnet/sf/smc/parser/SmcParserContext$ParserMap_IncludeFile;

    .line 757
    new-instance v0, Lnet/sf/smc/parser/SmcParserContext$ParserMap_Package;

    const-string v1, "ParserMap.Package"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v3}, Lnet/sf/smc/parser/SmcParserContext$ParserMap_Package;-><init>(Ljava/lang/String;ILnet/sf/smc/parser/SmcParserContext$1;)V

    sput-object v0, Lnet/sf/smc/parser/SmcParserContext$ParserMap;->Package:Lnet/sf/smc/parser/SmcParserContext$ParserMap_Package;

    .line 759
    new-instance v0, Lnet/sf/smc/parser/SmcParserContext$ParserMap_FsmClassName;

    const-string v1, "ParserMap.FsmClassName"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v3}, Lnet/sf/smc/parser/SmcParserContext$ParserMap_FsmClassName;-><init>(Ljava/lang/String;ILnet/sf/smc/parser/SmcParserContext$1;)V

    sput-object v0, Lnet/sf/smc/parser/SmcParserContext$ParserMap;->FsmClassName:Lnet/sf/smc/parser/SmcParserContext$ParserMap_FsmClassName;

    .line 761
    new-instance v0, Lnet/sf/smc/parser/SmcParserContext$ParserMap_Import;

    const-string v1, "ParserMap.Import"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v3}, Lnet/sf/smc/parser/SmcParserContext$ParserMap_Import;-><init>(Ljava/lang/String;ILnet/sf/smc/parser/SmcParserContext$1;)V

    sput-object v0, Lnet/sf/smc/parser/SmcParserContext$ParserMap;->Import:Lnet/sf/smc/parser/SmcParserContext$ParserMap_Import;

    .line 763
    new-instance v0, Lnet/sf/smc/parser/SmcParserContext$ParserMap_Declare;

    const-string v1, "ParserMap.Declare"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2, v3}, Lnet/sf/smc/parser/SmcParserContext$ParserMap_Declare;-><init>(Ljava/lang/String;ILnet/sf/smc/parser/SmcParserContext$1;)V

    sput-object v0, Lnet/sf/smc/parser/SmcParserContext$ParserMap;->Declare:Lnet/sf/smc/parser/SmcParserContext$ParserMap_Declare;

    .line 765
    new-instance v0, Lnet/sf/smc/parser/SmcParserContext$ParserMap_Access;

    const-string v1, "ParserMap.Access"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2, v3}, Lnet/sf/smc/parser/SmcParserContext$ParserMap_Access;-><init>(Ljava/lang/String;ILnet/sf/smc/parser/SmcParserContext$1;)V

    sput-object v0, Lnet/sf/smc/parser/SmcParserContext$ParserMap;->Access:Lnet/sf/smc/parser/SmcParserContext$ParserMap_Access;

    .line 767
    new-instance v0, Lnet/sf/smc/parser/SmcParserContext$ParserMap_StartError;

    const-string v1, "ParserMap.StartError"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2, v3}, Lnet/sf/smc/parser/SmcParserContext$ParserMap_StartError;-><init>(Ljava/lang/String;ILnet/sf/smc/parser/SmcParserContext$1;)V

    sput-object v0, Lnet/sf/smc/parser/SmcParserContext$ParserMap;->StartError:Lnet/sf/smc/parser/SmcParserContext$ParserMap_StartError;

    .line 769
    new-instance v0, Lnet/sf/smc/parser/SmcParserContext$ParserMap_MapStart;

    const-string v1, "ParserMap.MapStart"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2, v3}, Lnet/sf/smc/parser/SmcParserContext$ParserMap_MapStart;-><init>(Ljava/lang/String;ILnet/sf/smc/parser/SmcParserContext$1;)V

    sput-object v0, Lnet/sf/smc/parser/SmcParserContext$ParserMap;->MapStart:Lnet/sf/smc/parser/SmcParserContext$ParserMap_MapStart;

    .line 771
    new-instance v0, Lnet/sf/smc/parser/SmcParserContext$ParserMap_MapStartError;

    const-string v1, "ParserMap.MapStartError"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2, v3}, Lnet/sf/smc/parser/SmcParserContext$ParserMap_MapStartError;-><init>(Ljava/lang/String;ILnet/sf/smc/parser/SmcParserContext$1;)V

    sput-object v0, Lnet/sf/smc/parser/SmcParserContext$ParserMap;->MapStartError:Lnet/sf/smc/parser/SmcParserContext$ParserMap_MapStartError;

    .line 773
    new-instance v0, Lnet/sf/smc/parser/SmcParserContext$ParserMap_MapName;

    const-string v1, "ParserMap.MapName"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2, v3}, Lnet/sf/smc/parser/SmcParserContext$ParserMap_MapName;-><init>(Ljava/lang/String;ILnet/sf/smc/parser/SmcParserContext$1;)V

    sput-object v0, Lnet/sf/smc/parser/SmcParserContext$ParserMap;->MapName:Lnet/sf/smc/parser/SmcParserContext$ParserMap_MapName;

    .line 775
    new-instance v0, Lnet/sf/smc/parser/SmcParserContext$ParserMap_MapStates;

    const-string v1, "ParserMap.MapStates"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2, v3}, Lnet/sf/smc/parser/SmcParserContext$ParserMap_MapStates;-><init>(Ljava/lang/String;ILnet/sf/smc/parser/SmcParserContext$1;)V

    sput-object v0, Lnet/sf/smc/parser/SmcParserContext$ParserMap;->MapStates:Lnet/sf/smc/parser/SmcParserContext$ParserMap_MapStates;

    .line 777
    new-instance v0, Lnet/sf/smc/parser/SmcParserContext$ParserMap_MapStatesError;

    const-string v1, "ParserMap.MapStatesError"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2, v3}, Lnet/sf/smc/parser/SmcParserContext$ParserMap_MapStatesError;-><init>(Ljava/lang/String;ILnet/sf/smc/parser/SmcParserContext$1;)V

    sput-object v0, Lnet/sf/smc/parser/SmcParserContext$ParserMap;->MapStatesError:Lnet/sf/smc/parser/SmcParserContext$ParserMap_MapStatesError;

    .line 779
    new-instance v0, Lnet/sf/smc/parser/SmcParserContext$ParserMap_States;

    const-string v1, "ParserMap.States"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2, v3}, Lnet/sf/smc/parser/SmcParserContext$ParserMap_States;-><init>(Ljava/lang/String;ILnet/sf/smc/parser/SmcParserContext$1;)V

    sput-object v0, Lnet/sf/smc/parser/SmcParserContext$ParserMap;->States:Lnet/sf/smc/parser/SmcParserContext$ParserMap_States;

    .line 781
    new-instance v0, Lnet/sf/smc/parser/SmcParserContext$ParserMap_StateStart;

    const-string v1, "ParserMap.StateStart"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2, v3}, Lnet/sf/smc/parser/SmcParserContext$ParserMap_StateStart;-><init>(Ljava/lang/String;ILnet/sf/smc/parser/SmcParserContext$1;)V

    sput-object v0, Lnet/sf/smc/parser/SmcParserContext$ParserMap;->StateStart:Lnet/sf/smc/parser/SmcParserContext$ParserMap_StateStart;

    .line 783
    new-instance v0, Lnet/sf/smc/parser/SmcParserContext$ParserMap_StateStartError;

    const-string v1, "ParserMap.StateStartError"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2, v3}, Lnet/sf/smc/parser/SmcParserContext$ParserMap_StateStartError;-><init>(Ljava/lang/String;ILnet/sf/smc/parser/SmcParserContext$1;)V

    sput-object v0, Lnet/sf/smc/parser/SmcParserContext$ParserMap;->StateStartError:Lnet/sf/smc/parser/SmcParserContext$ParserMap_StateStartError;

    .line 785
    new-instance v0, Lnet/sf/smc/parser/SmcParserContext$ParserMap_EntryStart;

    const-string v1, "ParserMap.EntryStart"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2, v3}, Lnet/sf/smc/parser/SmcParserContext$ParserMap_EntryStart;-><init>(Ljava/lang/String;ILnet/sf/smc/parser/SmcParserContext$1;)V

    sput-object v0, Lnet/sf/smc/parser/SmcParserContext$ParserMap;->EntryStart:Lnet/sf/smc/parser/SmcParserContext$ParserMap_EntryStart;

    .line 787
    new-instance v0, Lnet/sf/smc/parser/SmcParserContext$ParserMap_EntryEnd;

    const-string v1, "ParserMap.EntryEnd"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2, v3}, Lnet/sf/smc/parser/SmcParserContext$ParserMap_EntryEnd;-><init>(Ljava/lang/String;ILnet/sf/smc/parser/SmcParserContext$1;)V

    sput-object v0, Lnet/sf/smc/parser/SmcParserContext$ParserMap;->EntryEnd:Lnet/sf/smc/parser/SmcParserContext$ParserMap_EntryEnd;

    .line 789
    new-instance v0, Lnet/sf/smc/parser/SmcParserContext$ParserMap_ExitStart;

    const-string v1, "ParserMap.ExitStart"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2, v3}, Lnet/sf/smc/parser/SmcParserContext$ParserMap_ExitStart;-><init>(Ljava/lang/String;ILnet/sf/smc/parser/SmcParserContext$1;)V

    sput-object v0, Lnet/sf/smc/parser/SmcParserContext$ParserMap;->ExitStart:Lnet/sf/smc/parser/SmcParserContext$ParserMap_ExitStart;

    .line 791
    new-instance v0, Lnet/sf/smc/parser/SmcParserContext$ParserMap_ExitEnd;

    const-string v1, "ParserMap.ExitEnd"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2, v3}, Lnet/sf/smc/parser/SmcParserContext$ParserMap_ExitEnd;-><init>(Ljava/lang/String;ILnet/sf/smc/parser/SmcParserContext$1;)V

    sput-object v0, Lnet/sf/smc/parser/SmcParserContext$ParserMap;->ExitEnd:Lnet/sf/smc/parser/SmcParserContext$ParserMap_ExitEnd;

    .line 793
    new-instance v0, Lnet/sf/smc/parser/SmcParserContext$ParserMap_Transitions;

    const-string v1, "ParserMap.Transitions"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2, v3}, Lnet/sf/smc/parser/SmcParserContext$ParserMap_Transitions;-><init>(Ljava/lang/String;ILnet/sf/smc/parser/SmcParserContext$1;)V

    sput-object v0, Lnet/sf/smc/parser/SmcParserContext$ParserMap;->Transitions:Lnet/sf/smc/parser/SmcParserContext$ParserMap_Transitions;

    .line 795
    new-instance v0, Lnet/sf/smc/parser/SmcParserContext$ParserMap_TransError;

    const-string v1, "ParserMap.TransError"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2, v3}, Lnet/sf/smc/parser/SmcParserContext$ParserMap_TransError;-><init>(Ljava/lang/String;ILnet/sf/smc/parser/SmcParserContext$1;)V

    sput-object v0, Lnet/sf/smc/parser/SmcParserContext$ParserMap;->TransError:Lnet/sf/smc/parser/SmcParserContext$ParserMap_TransError;

    .line 797
    new-instance v0, Lnet/sf/smc/parser/SmcParserContext$ParserMap_TransStart;

    const-string v1, "ParserMap.TransStart"

    const/16 v2, 0x19

    invoke-direct {v0, v1, v2, v3}, Lnet/sf/smc/parser/SmcParserContext$ParserMap_TransStart;-><init>(Ljava/lang/String;ILnet/sf/smc/parser/SmcParserContext$1;)V

    sput-object v0, Lnet/sf/smc/parser/SmcParserContext$ParserMap;->TransStart:Lnet/sf/smc/parser/SmcParserContext$ParserMap_TransStart;

    .line 799
    new-instance v0, Lnet/sf/smc/parser/SmcParserContext$ParserMap_TransStartError;

    const-string v1, "ParserMap.TransStartError"

    const/16 v2, 0x1a

    invoke-direct {v0, v1, v2, v3}, Lnet/sf/smc/parser/SmcParserContext$ParserMap_TransStartError;-><init>(Ljava/lang/String;ILnet/sf/smc/parser/SmcParserContext$1;)V

    sput-object v0, Lnet/sf/smc/parser/SmcParserContext$ParserMap;->TransStartError:Lnet/sf/smc/parser/SmcParserContext$ParserMap_TransStartError;

    .line 801
    new-instance v0, Lnet/sf/smc/parser/SmcParserContext$ParserMap_TransParams;

    const-string v1, "ParserMap.TransParams"

    const/16 v2, 0x1b

    invoke-direct {v0, v1, v2, v3}, Lnet/sf/smc/parser/SmcParserContext$ParserMap_TransParams;-><init>(Ljava/lang/String;ILnet/sf/smc/parser/SmcParserContext$1;)V

    sput-object v0, Lnet/sf/smc/parser/SmcParserContext$ParserMap;->TransParams:Lnet/sf/smc/parser/SmcParserContext$ParserMap_TransParams;

    .line 803
    new-instance v0, Lnet/sf/smc/parser/SmcParserContext$ParserMap_TransNext;

    const-string v1, "ParserMap.TransNext"

    const/16 v2, 0x1c

    invoke-direct {v0, v1, v2, v3}, Lnet/sf/smc/parser/SmcParserContext$ParserMap_TransNext;-><init>(Ljava/lang/String;ILnet/sf/smc/parser/SmcParserContext$1;)V

    sput-object v0, Lnet/sf/smc/parser/SmcParserContext$ParserMap;->TransNext:Lnet/sf/smc/parser/SmcParserContext$ParserMap_TransNext;

    .line 805
    new-instance v0, Lnet/sf/smc/parser/SmcParserContext$ParserMap_TransNextError;

    const-string v1, "ParserMap.TransNextError"

    const/16 v2, 0x1d

    invoke-direct {v0, v1, v2, v3}, Lnet/sf/smc/parser/SmcParserContext$ParserMap_TransNextError;-><init>(Ljava/lang/String;ILnet/sf/smc/parser/SmcParserContext$1;)V

    sput-object v0, Lnet/sf/smc/parser/SmcParserContext$ParserMap;->TransNextError:Lnet/sf/smc/parser/SmcParserContext$ParserMap_TransNextError;

    .line 807
    new-instance v0, Lnet/sf/smc/parser/SmcParserContext$ParserMap_TransGuard;

    const-string v1, "ParserMap.TransGuard"

    const/16 v2, 0x1e

    invoke-direct {v0, v1, v2, v3}, Lnet/sf/smc/parser/SmcParserContext$ParserMap_TransGuard;-><init>(Ljava/lang/String;ILnet/sf/smc/parser/SmcParserContext$1;)V

    sput-object v0, Lnet/sf/smc/parser/SmcParserContext$ParserMap;->TransGuard:Lnet/sf/smc/parser/SmcParserContext$ParserMap_TransGuard;

    .line 809
    new-instance v0, Lnet/sf/smc/parser/SmcParserContext$ParserMap_EndState;

    const-string v1, "ParserMap.EndState"

    const/16 v2, 0x1f

    invoke-direct {v0, v1, v2, v3}, Lnet/sf/smc/parser/SmcParserContext$ParserMap_EndState;-><init>(Ljava/lang/String;ILnet/sf/smc/parser/SmcParserContext$1;)V

    sput-object v0, Lnet/sf/smc/parser/SmcParserContext$ParserMap;->EndState:Lnet/sf/smc/parser/SmcParserContext$ParserMap_EndState;

    .line 811
    new-instance v0, Lnet/sf/smc/parser/SmcParserContext$ParserMap_EndStateError;

    const-string v1, "ParserMap.EndStateError"

    const/16 v2, 0x20

    invoke-direct {v0, v1, v2, v3}, Lnet/sf/smc/parser/SmcParserContext$ParserMap_EndStateError;-><init>(Ljava/lang/String;ILnet/sf/smc/parser/SmcParserContext$1;)V

    sput-object v0, Lnet/sf/smc/parser/SmcParserContext$ParserMap;->EndStateError:Lnet/sf/smc/parser/SmcParserContext$ParserMap_EndStateError;

    .line 813
    new-instance v0, Lnet/sf/smc/parser/SmcParserContext$ParserMap_SimpleTrans;

    const-string v1, "ParserMap.SimpleTrans"

    const/16 v2, 0x21

    invoke-direct {v0, v1, v2, v3}, Lnet/sf/smc/parser/SmcParserContext$ParserMap_SimpleTrans;-><init>(Ljava/lang/String;ILnet/sf/smc/parser/SmcParserContext$1;)V

    sput-object v0, Lnet/sf/smc/parser/SmcParserContext$ParserMap;->SimpleTrans:Lnet/sf/smc/parser/SmcParserContext$ParserMap_SimpleTrans;

    .line 815
    new-instance v0, Lnet/sf/smc/parser/SmcParserContext$ParserMap_PushTransition;

    const-string v1, "ParserMap.PushTransition"

    const/16 v2, 0x22

    invoke-direct {v0, v1, v2, v3}, Lnet/sf/smc/parser/SmcParserContext$ParserMap_PushTransition;-><init>(Ljava/lang/String;ILnet/sf/smc/parser/SmcParserContext$1;)V

    sput-object v0, Lnet/sf/smc/parser/SmcParserContext$ParserMap;->PushTransition:Lnet/sf/smc/parser/SmcParserContext$ParserMap_PushTransition;

    .line 817
    new-instance v0, Lnet/sf/smc/parser/SmcParserContext$ParserMap_PushStart;

    const-string v1, "ParserMap.PushStart"

    const/16 v2, 0x23

    invoke-direct {v0, v1, v2, v3}, Lnet/sf/smc/parser/SmcParserContext$ParserMap_PushStart;-><init>(Ljava/lang/String;ILnet/sf/smc/parser/SmcParserContext$1;)V

    sput-object v0, Lnet/sf/smc/parser/SmcParserContext$ParserMap;->PushStart:Lnet/sf/smc/parser/SmcParserContext$ParserMap_PushStart;

    .line 819
    new-instance v0, Lnet/sf/smc/parser/SmcParserContext$ParserMap_PushError;

    const-string v1, "ParserMap.PushError"

    const/16 v2, 0x24

    invoke-direct {v0, v1, v2, v3}, Lnet/sf/smc/parser/SmcParserContext$ParserMap_PushError;-><init>(Ljava/lang/String;ILnet/sf/smc/parser/SmcParserContext$1;)V

    sput-object v0, Lnet/sf/smc/parser/SmcParserContext$ParserMap;->PushError:Lnet/sf/smc/parser/SmcParserContext$ParserMap_PushError;

    .line 821
    new-instance v0, Lnet/sf/smc/parser/SmcParserContext$ParserMap_PushMap;

    const-string v1, "ParserMap.PushMap"

    const/16 v2, 0x25

    invoke-direct {v0, v1, v2, v3}, Lnet/sf/smc/parser/SmcParserContext$ParserMap_PushMap;-><init>(Ljava/lang/String;ILnet/sf/smc/parser/SmcParserContext$1;)V

    sput-object v0, Lnet/sf/smc/parser/SmcParserContext$ParserMap;->PushMap:Lnet/sf/smc/parser/SmcParserContext$ParserMap_PushMap;

    .line 823
    new-instance v0, Lnet/sf/smc/parser/SmcParserContext$ParserMap_PushEnd;

    const-string v1, "ParserMap.PushEnd"

    const/16 v2, 0x26

    invoke-direct {v0, v1, v2, v3}, Lnet/sf/smc/parser/SmcParserContext$ParserMap_PushEnd;-><init>(Ljava/lang/String;ILnet/sf/smc/parser/SmcParserContext$1;)V

    sput-object v0, Lnet/sf/smc/parser/SmcParserContext$ParserMap;->PushEnd:Lnet/sf/smc/parser/SmcParserContext$ParserMap_PushEnd;

    .line 825
    new-instance v0, Lnet/sf/smc/parser/SmcParserContext$ParserMap_JumpStart;

    const-string v1, "ParserMap.JumpStart"

    const/16 v2, 0x27

    invoke-direct {v0, v1, v2, v3}, Lnet/sf/smc/parser/SmcParserContext$ParserMap_JumpStart;-><init>(Ljava/lang/String;ILnet/sf/smc/parser/SmcParserContext$1;)V

    sput-object v0, Lnet/sf/smc/parser/SmcParserContext$ParserMap;->JumpStart:Lnet/sf/smc/parser/SmcParserContext$ParserMap_JumpStart;

    .line 827
    new-instance v0, Lnet/sf/smc/parser/SmcParserContext$ParserMap_JumpError;

    const-string v1, "ParserMap.JumpError"

    const/16 v2, 0x28

    invoke-direct {v0, v1, v2, v3}, Lnet/sf/smc/parser/SmcParserContext$ParserMap_JumpError;-><init>(Ljava/lang/String;ILnet/sf/smc/parser/SmcParserContext$1;)V

    sput-object v0, Lnet/sf/smc/parser/SmcParserContext$ParserMap;->JumpError:Lnet/sf/smc/parser/SmcParserContext$ParserMap_JumpError;

    .line 829
    new-instance v0, Lnet/sf/smc/parser/SmcParserContext$ParserMap_JumpMap;

    const-string v1, "ParserMap.JumpMap"

    const/16 v2, 0x29

    invoke-direct {v0, v1, v2, v3}, Lnet/sf/smc/parser/SmcParserContext$ParserMap_JumpMap;-><init>(Ljava/lang/String;ILnet/sf/smc/parser/SmcParserContext$1;)V

    sput-object v0, Lnet/sf/smc/parser/SmcParserContext$ParserMap;->JumpMap:Lnet/sf/smc/parser/SmcParserContext$ParserMap_JumpMap;

    .line 831
    new-instance v0, Lnet/sf/smc/parser/SmcParserContext$ParserMap_JumpEnd;

    const-string v1, "ParserMap.JumpEnd"

    const/16 v2, 0x2a

    invoke-direct {v0, v1, v2, v3}, Lnet/sf/smc/parser/SmcParserContext$ParserMap_JumpEnd;-><init>(Ljava/lang/String;ILnet/sf/smc/parser/SmcParserContext$1;)V

    sput-object v0, Lnet/sf/smc/parser/SmcParserContext$ParserMap;->JumpEnd:Lnet/sf/smc/parser/SmcParserContext$ParserMap_JumpEnd;

    .line 833
    new-instance v0, Lnet/sf/smc/parser/SmcParserContext$ParserMap_PopStart;

    const-string v1, "ParserMap.PopStart"

    const/16 v2, 0x2b

    invoke-direct {v0, v1, v2, v3}, Lnet/sf/smc/parser/SmcParserContext$ParserMap_PopStart;-><init>(Ljava/lang/String;ILnet/sf/smc/parser/SmcParserContext$1;)V

    sput-object v0, Lnet/sf/smc/parser/SmcParserContext$ParserMap;->PopStart:Lnet/sf/smc/parser/SmcParserContext$ParserMap_PopStart;

    .line 835
    new-instance v0, Lnet/sf/smc/parser/SmcParserContext$ParserMap_PopError;

    const-string v1, "ParserMap.PopError"

    const/16 v2, 0x2c

    invoke-direct {v0, v1, v2, v3}, Lnet/sf/smc/parser/SmcParserContext$ParserMap_PopError;-><init>(Ljava/lang/String;ILnet/sf/smc/parser/SmcParserContext$1;)V

    sput-object v0, Lnet/sf/smc/parser/SmcParserContext$ParserMap;->PopError:Lnet/sf/smc/parser/SmcParserContext$ParserMap_PopError;

    .line 837
    new-instance v0, Lnet/sf/smc/parser/SmcParserContext$ParserMap_PopAction;

    const-string v1, "ParserMap.PopAction"

    const/16 v2, 0x2d

    invoke-direct {v0, v1, v2, v3}, Lnet/sf/smc/parser/SmcParserContext$ParserMap_PopAction;-><init>(Ljava/lang/String;ILnet/sf/smc/parser/SmcParserContext$1;)V

    sput-object v0, Lnet/sf/smc/parser/SmcParserContext$ParserMap;->PopAction:Lnet/sf/smc/parser/SmcParserContext$ParserMap_PopAction;

    .line 839
    new-instance v0, Lnet/sf/smc/parser/SmcParserContext$ParserMap_PopArgs;

    const-string v1, "ParserMap.PopArgs"

    const/16 v2, 0x2e

    invoke-direct {v0, v1, v2, v3}, Lnet/sf/smc/parser/SmcParserContext$ParserMap_PopArgs;-><init>(Ljava/lang/String;ILnet/sf/smc/parser/SmcParserContext$1;)V

    sput-object v0, Lnet/sf/smc/parser/SmcParserContext$ParserMap;->PopArgs:Lnet/sf/smc/parser/SmcParserContext$ParserMap_PopArgs;

    .line 841
    new-instance v0, Lnet/sf/smc/parser/SmcParserContext$ParserMap_PopArgsEnd;

    const-string v1, "ParserMap.PopArgsEnd"

    const/16 v2, 0x2f

    invoke-direct {v0, v1, v2, v3}, Lnet/sf/smc/parser/SmcParserContext$ParserMap_PopArgsEnd;-><init>(Ljava/lang/String;ILnet/sf/smc/parser/SmcParserContext$1;)V

    sput-object v0, Lnet/sf/smc/parser/SmcParserContext$ParserMap;->PopArgsEnd:Lnet/sf/smc/parser/SmcParserContext$ParserMap_PopArgsEnd;

    .line 843
    new-instance v0, Lnet/sf/smc/parser/SmcParserContext$ParserMap_ActionStart;

    const-string v1, "ParserMap.ActionStart"

    const/16 v2, 0x30

    invoke-direct {v0, v1, v2, v3}, Lnet/sf/smc/parser/SmcParserContext$ParserMap_ActionStart;-><init>(Ljava/lang/String;ILnet/sf/smc/parser/SmcParserContext$1;)V

    sput-object v0, Lnet/sf/smc/parser/SmcParserContext$ParserMap;->ActionStart:Lnet/sf/smc/parser/SmcParserContext$ParserMap_ActionStart;

    .line 845
    new-instance v0, Lnet/sf/smc/parser/SmcParserContext$ParserMap_ActionEnd;

    const-string v1, "ParserMap.ActionEnd"

    const/16 v2, 0x31

    invoke-direct {v0, v1, v2, v3}, Lnet/sf/smc/parser/SmcParserContext$ParserMap_ActionEnd;-><init>(Ljava/lang/String;ILnet/sf/smc/parser/SmcParserContext$1;)V

    sput-object v0, Lnet/sf/smc/parser/SmcParserContext$ParserMap;->ActionEnd:Lnet/sf/smc/parser/SmcParserContext$ParserMap_ActionEnd;

    .line 847
    new-instance v0, Lnet/sf/smc/parser/SmcParserContext$ParserMap_ActionStartError;

    const-string v1, "ParserMap.ActionStartError"

    const/16 v2, 0x32

    invoke-direct {v0, v1, v2, v3}, Lnet/sf/smc/parser/SmcParserContext$ParserMap_ActionStartError;-><init>(Ljava/lang/String;ILnet/sf/smc/parser/SmcParserContext$1;)V

    sput-object v0, Lnet/sf/smc/parser/SmcParserContext$ParserMap;->ActionStartError:Lnet/sf/smc/parser/SmcParserContext$ParserMap_ActionStartError;

    .line 849
    new-instance v0, Lnet/sf/smc/parser/SmcParserContext$ParserMap_Default;

    const-string v1, "ParserMap.Default"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Lnet/sf/smc/parser/SmcParserContext$ParserMap_Default;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/sf/smc/parser/SmcParserContext$ParserMap;->Default:Lnet/sf/smc/parser/SmcParserContext$ParserMap_Default;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 734
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
