%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtXml

$header

/*
enum QDomNode::EncodingPolicy
*/
#define QDomNode_EncodingFromDocument                                1
#define QDomNode_EncodingFromTextStream                              2

/*
enum QDomNode::NodeType
*/
#define QDomNode_ElementNode                                         1
#define QDomNode_AttributeNode                                       2
#define QDomNode_TextNode                                            3
#define QDomNode_CDATASectionNode                                    4
#define QDomNode_EntityReferenceNode                                 5
#define QDomNode_EntityNode                                          6
#define QDomNode_ProcessingInstructionNode                           7
#define QDomNode_CommentNode                                         8
#define QDomNode_DocumentNode                                        9
#define QDomNode_DocumentTypeNode                                    10
#define QDomNode_DocumentFragmentNode                                11
#define QDomNode_NotationNode                                        12
#define QDomNode_BaseNode                                            21
#define QDomNode_CharacterDataNode                                   22
